<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Sortable extends CI_Controller
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


    public function viewSortable()
    {
        $data = $this->engine->store_nav('sortable', 'sortable', 'Welcome to dashboard');
        $data['sortableList'] = $this->Common->get_data('sortable');
        $path = 'backend/jquery_ui/sortable_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }
    public function addSortable()
    {
        $max = $this->db->query('select max(`s_order`) as s_order from sortable')->row()->s_order;
        $s_name = $this->input->post('s_name');
        $s_address = $this->input->post('s_address');
        $s_email = $this->input->post('s_email');
        $s_phone = $this->input->post('s_phone');
        // $s_order = $this->input->post('s_order');

        $data = array(
            's_name' => $s_name,
            's_address' => $s_address,
            's_email' => $s_email,
            's_phone' => $s_phone,
            's_order' => $max + 1,
            's_status' => 1,
            's_created_at' => get_current_time(),
            's_created_by' =>  $this->loged_username,
        );

        $this->Common->insertData('sortable', $data);
        set_confirmation_msg(True, 'Successfully Added.', '');
        redirect('viewSortable');
    }

    function updateData()
    {
        // $sortableList = $this->Common->get_data('sortable');

        // x_debug($this->input->post('dataArray'));
        // $all_data = $this->input->post('dataArray');
        // x_debug($all_data);
        foreach ($this->input->post('dataArray') as $key) {
            $this->Common->update_data('sortable', 's_id', $key["id"], ["s_order" => $key["position"]]);
        }
        // foreach ($variable as $key => $value) {
        //     # code...
        // }
        // foreach ($data['sortableList']->result() as $value) {
        //     // x_debug($value);
        //     foreach ($this->input->post('dataArray') as  $row) {


        //         // if ($value->s_id == $row['id']) {

        //             $orderArray = array('s_order' => $row['position']);
        //             // x_debug($orderArray);
        //             $this->Common->update_data('sortable', 's_id', $value->s_id, $orderArray);
        //         // }
        //     }
        // }
    }
}
