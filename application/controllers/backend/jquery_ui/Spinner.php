<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Spinner extends CI_Controller
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


    public function viewSpinner()
    {
        $data = $this->engine->store_nav('sortable', 'viewSpinner', 'Welcome to dashboard');
        // $data['sortableList'] = $this->Common->get_data('sortable');
        $path = 'backend/jquery_ui/spinner_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }
}
