<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Slider extends CI_Controller
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

        $this->logged_username = $this->session->userdata('currentActiveId');
    }


    public function viewSlider()
    {
        $data = $this->engine->store_nav('sortable', 'viewSlider', 'Welcome to dashboard');
        // $data['sortableList'] = $this->Common->get_data('sortable');
        $path = 'backend/jquery_ui/slider_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }

    public function addSlider()
    {
        $sr_name = $this->input->post("sr_name");
        $sr_price = $this->input->post("sr_price");

        $config = array(
            'file_name' => $_FILES['sr_img']['name'],
            'upload_path' => "assets/uploads/files/",
            'allowed_types' => "gif|jpg|png|jpeg|pdf",
            'overwrite' => False,
            'max_size' => "2048000033", // can be set to particuler fil
            'max_height' => "176833",
            'max_width' => "202444"
        );

        $this->load->library('Upload', $config);
        $this->upload->initialize($config);

        if ($this->upload->do_upload('sr_img')) {
            $path = $this->upload->data();
            $sr_img = $path['file_name'];
            $dataArray = array(
                'sr_name' => $sr_name,
                'sr_img' => $sr_img,
                'sr_price' => $sr_price,
                'sr_created_at' => get_current_time(),
                'sr_created_by' => $this->logged_username,
                'sr_status' => 1,
            );
            $this->Common->insertData('slider_range', $dataArray);
        }
    }

    public function showSliderData()
    {


        $sliderDataGet = $this->Common->getData('slider_range');
        $sl = 1;
        if ($sliderDataGet) {
            foreach ($sliderDataGet->result() as $value) { ?>

                <tr>
                    <td><?= $sl++ ?></td>
                    <td> <img class="card-img-top rounded ui-state-active" style="height: 50px; width:50px" src=" <?php echo base_url('assets/uploads/files/' . $value->sr_img); ?>"></td>
                    <td><?= $value->sr_name ?></td>
                    <td><?= $value->sr_price ?>$
                        <!-- <button type="button" data-id="<?= $value->s_menu_id ?>" class="bg-danger remove ui-button float-right ui-widget ui-corner-all" id="submitForm">Delete</button> -->
                    </td>
                </tr>

            <?php }
        }
    }

    public function slideRang()
    {
        $minPrice = $this->input->post("minPrice");
        $maxPrice = $this->input->post("maxPrice");

        $sliderDataGet = $this->Common->sql_excute(getMinMax($minPrice, $maxPrice));
        $sl = 1;
        if ($sliderDataGet) {
            foreach ($sliderDataGet->result() as $value) { ?>
                <tr>
                    <td><?= $sl++; ?></td>
                    <td><img class="card-img-top rounded ui-state-active" style="height: 50px; width:50px" src=" <?php echo base_url('assets/uploads/files/' . $value->sr_img); ?>"></td>
                    <td> <?= $value->sr_name ?></td>
                    <td><?= $value->sr_price ?> </td>
                </tr>
<?php }
        }
    }
}
