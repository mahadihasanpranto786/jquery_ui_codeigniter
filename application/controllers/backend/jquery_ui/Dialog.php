<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dialog extends CI_Controller
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

    public function dialogShow()
    {
        $data = $this->engine->store_nav('sortable', 'dialogShow', 'Dialog');
        // $data['datepickerList'] = $this->Common->getData('datepicker');
        $path = 'backend/jquery_ui/dialog_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }
    public function dialogAdd()
    {
        $d_id = $this->input->post('d_id');
        $d_name = $this->input->post('d_name');
        $d_address = $this->input->post('d_address');
        $d_description = $this->input->post('d_description');


        $dialogData = array(
            'd_name' => $d_name,
            'd_address' => $d_address,
            'd_description' => $d_description,
            'd_created_at' => get_current_time(),
            'd_created_by' => $this->logged_username,
            'd_status' => 1
        );
        $this->Common->insertData('dialog', $dialogData);
    }

    public function dialogAjaxView()
    {
        $dialogList = $this->Common->getData('dialog');

        $sl = 1;
        if ($dialogList) {
            foreach ($dialogList->result() as  $value) { ?>
                <tr>

                    <td><?= $sl++ ?></td>
                    <td><?= $value->d_name ?></td>
                    <td><?= $value->d_address ?></td>
                    <td><?= $value->d_description ?></td>
                    <td>
                        <button class="loginForm ml-1 ui-button ui-widget ui-corner-all bg-success" data-id="<?= $value->d_id ?>" data-name="<?= $value->d_name ?>" data-address="<?= $value->d_address ?>" data-description="<?= $value->d_description ?>">Edit</button>
                        <button data-id='<?= $value->d_id ?>' type='button' class='btn btn-sm bg-danger list_remove'>Delete</button>
                    </td>
                </tr>

<?php  }
        }
    }

    public function dialogUpdate()
    {
        $d_id = $this->input->post('d_id');
        $d_name = $this->input->post('d_name');
        $d_address = $this->input->post('d_address');
        $d_description = $this->input->post('d_description');


        $dialogData = array(
            'd_name' => $d_name,
            'd_address' => $d_address,
            'd_description' => $d_description,
            'd_updated_at' => get_current_time(),
            'd_updated_by' => $this->logged_username,
        );
        $this->Common->update_data('dialog', 'd_id', $d_id, $dialogData);
    }
    public function deleteDaTA()

    {
        $id = $this->input->post('d_id');
        $this->db->where('d_id', $id);
        $this->db->delete('dialog');
        echo json_encode(['success' => true]);
    }
}
