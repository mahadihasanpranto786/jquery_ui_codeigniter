<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Progressbar extends CI_Controller
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

    // index method
    public function progressbarView()
    {
        $data = $this->engine->store_nav('sortable', 'progressbar', 'Welcome to dashboard');
        // $data['sortableList'] = $this->Common->get_data('sortable');
        $path = 'backend/jquery_ui/progressbar_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }
    // Upload file/image method
    public function upload_data()
    {
        $this->load->library('upload');
        $json = array();
        $path =  base_url('../../../../asset/uploads');
        // Define file rules
        $initialize = $this->upload->initialize(array(
            "upload_path" => $path,
            "allowed_types" => "gif|jpg|jpeg|png|bmp|pdf|doc|docx",
            "remove_spaces" => TRUE
        ));
        if (!$this->upload->do_upload('upl_file')) {
            $error = array('error' => $this->upload->display_errors());
            echo $this->upload->display_errors();
            $json = 'failed';
        } else {
            $data = $this->upload->data();
            $imagename = $data['file_name'];
            $json = 'success';
        }
        echo json_encode($json);
    }
}
