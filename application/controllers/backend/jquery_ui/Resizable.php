<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Resizable extends CI_Controller
{
    private $main_layout = '';
    private $side_menu = '';


    public function __construct()
    {
        parent::__construct();
        if (!isset($this->session->userdata['currentActiveId'])) {
            redirect('login');
        }
        $this->main_layout = 'backend/master_layout';
        $this->side_menu = 'backend/administrator/side_menu';

        $this->loged_username = $this->session->userdata('currentActiveId');
    }

    public function showResizable()
    {
        $data = $this->engine->store_nav('sortable', 'showResizable', 'Show');

        $path = 'backend/jquery_ui/resizable_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }

    public function addResizable()
    {
        $r_name = $this->input->post('r_name');

        $config = array(
            'file_name' => $_FILES['r_img_url']['name'],
            'upload_path' => "assets/uploads/files/",
            'allowed_types' => "gif|jpg|png|jpeg|pdf",
            'overwrite' => False,
            'max_size' => "2048000033", // can be set to particuler fil
            'max_height' => "176833",
            'max_width' => "202444"
        );

        $this->load->library('Upload', $config);
        $this->upload->initialize($config);

        if ($this->upload->do_upload('r_img_url')) {
            $path = $this->upload->data();
            $r_img_url = $path['file_name'];
            $data = array(
                'r_name' => $r_name,
                'r_img_url' => $r_img_url,
                'r_created_at' => get_current_time(),
                'r_created_by' =>  $this->loged_username,
                'r_status' => 1,
                'r_height' => '50px',
                'r_width' => '50px'
            );
            $this->Common->insertData('resizable', $data);
        }
    }

    public function viewSortable()
    {
        $resizableData = $this->Common->getdata('resizable');
        if ($resizableData) {
            foreach ($resizableData->result() as $row) { ?>
                <style>
                    #container {
                        width: 300px;
                        height: 300px;
                    }

                    #container h3 {
                        text-align: center;
                        margin: 0;
                        margin-bottom: 10px;
                    }

                    .resizable {
                        background-position: top left;
                        width: 150px;
                        height: 150px;
                    }

                    .resizable,
                    #container {
                        padding: 0.5em;
                    }
                </style>
                <div class="col-md-3">

                    <div id="container" class="card ui-widget-content">
                        <img class="card-img-top ui-state-active" src="<?php echo base_url('assets/uploads/files/' . $row->r_img_url); ?>" style="width: <?php echo $row->r_height ?>; height: <?php echo $row->r_width ?>" alt="">
                        <div class="card-body resizable" data-id="<?= $row->r_id ?>" style="width: <?php echo $row->r_height ?>; height: <?php echo $row->r_width ?>">
                            <h5 class="card-title"><?= $row->r_name ?></h5>
                        </div>
                    </div>


                    <!-- <div id="container" class="ui-widget-content">
                        <h3 class="ui-widget-header">Containment</h3>
                        <div class=" resizable ui-state-active" data-id="<?= $row->r_id ?>" style="width: <?php echo $row->r_height ?>; height: <?php echo $row->r_width ?>">
                            <h6 class=" ui-widget-header"><?= $row->r_name ?>
                            </h6>
                        </div>
                    </div> -->
                </div>
<?php }
        }
    }

    public function updateResizable()
    {
        foreach ($this->input->post('dataArray') as $key) {
            $this->Common->update_data('resizable', 'r_id', $key["id"], ["r_height" => $key["new_height"], "r_width" => $key["new_width"]]);
        }
    }
}
