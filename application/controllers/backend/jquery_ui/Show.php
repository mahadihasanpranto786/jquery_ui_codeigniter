<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Show extends CI_Controller
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

    public function show()
    {
        $data = $this->engine->store_nav('sortable', 'show', 'Show');
        // $data['datepickerList'] = $this->Common->getdata('datepicker');
        $path = 'backend/jquery_ui/show_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }

    public function addShow()
    {

        $s_text_area1 = $this->input->post('s_text_area1');
        $s_text_area2 = $this->input->post('s_text_area2');
        $s_text_area3 = $this->input->post('s_text_area3');

        $data = array(
            's_text_area1' => $s_text_area1,
            's_text_area2' => $s_text_area2,
            's_text_area3' => $s_text_area3,
            's_status' => 1,
            's_created_at' => get_current_time(),
            's_created_by' =>  $this->loged_username,
        );

        $this->Common->insertData('show', $data);
        redirect('show');
    }

    public function dataShowAjax()
    {
        $showList = $this->Common->getdata('show');

        $sl = 1;
        if ($showList) {
            foreach ($showList->result() as  $value) { ?>
                <tr id="dataShow" class="toggler">

                    <td class="effect"><?= $sl++ ?></td>
                    <td class="effect"><?= $value->s_text_area1 ?></td>
                    <td class="effect"><?= $value->s_text_area2 ?></td>
                    <td class="effect"><?= $value->s_text_area3 ?></td>
                    <td>
                        <button data-id='<?= $value->s_id ?>' type='button' class='btn btn-sm bg-danger data_remove'>Delete</button>
                    </td>
                    <td>
                        <?php if ($value->s_status == 1) { ?>
                            <button type="button" data-id="<?= $value->s_id  ?>" data-status="<?= $value->s_status  ?>" class="btn float-right btn-success user_status mr-1"> Active</button>

                        <?php  } else { ?>
                            <button type="button" data-id="<?= $value->s_id  ?>" data-status="<?= $value->s_status  ?>" class="btn float-right  user_status btn-primary mr-1"> Inactive</button>
                        <?php } ?>
                    </td>
                </tr>
<?php  }
        }
    }
    public function deleteDataShow()

    {
        $data = $this->input->post('s_id');
        $this->Common->delete_data("show", 's_id', $data);
        echo json_encode(['success' => true]);
    }

    public function updateStatus()
    {

        $id = $this->input->post('s_id');
        $status = $this->input->post('s_status');

        if ($status == 1) {
            $status = 0;
        } else {
            $user_status = 1;
        }
        $data = array(
            's_status' => $user_status,
        );
        $this->Common->update_data("show", "s_id", $id, $data);
        redirect('show');
    }
}
