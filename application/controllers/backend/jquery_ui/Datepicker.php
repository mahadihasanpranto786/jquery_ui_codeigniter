<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Datepicker extends CI_Controller
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

    public function datepickerShow()
    {
        $data = $this->engine->store_nav('sortable', 'datepicker', 'Datepicker');
        // $data['datepickerList'] = $this->Common->getdata('datepicker');
        $path = 'backend/jquery_ui/datepicker_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }
    public function datepickerShowAjax()
    {
        $datepickerList = $this->Common->getdata('datepicker');

        $sl = 1;
        if ($datepickerList) {
            foreach ($datepickerList->result() as  $value) { ?>
                <tr>

                    <td><?= $sl++ ?></td>
                    <td><?= $value->d_name ?></td>
                    <td><?= date("d-m-Y", strtotime($value->d_date)) ?></td>
                    <td>
                        <button data-id='<?= $value->d_id ?>' type='button' class='btn btn-sm bg-danger data_remove'>Delete</button>
                    </td>
                </tr>
<?php  }
        }
    }
    public function datepickerAdd()
    {
        $d_name = $this->input->post('d_name');
        $d_date = $this->input->post('d_date');
        $datatime = date("Y/m/d", strtotime($d_date));
        $data = array(
            'd_name' => $d_name,
            'd_date' => $datatime,
            'd_status' => 1,
            'd_created_at' => get_current_time(),
            'd_created_by' =>  $this->loged_username,
        );

        $this->Common->insertData('datepicker', $data);
    }
    public function deleteData()

    {
        $data = $this->input->post('d_id');
        $this->Common->delete_data("datepicker", 'd_id', $data);
    }
}
