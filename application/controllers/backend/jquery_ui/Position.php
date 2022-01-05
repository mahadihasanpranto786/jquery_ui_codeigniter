<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Position extends CI_Controller
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
    public function viewPosition()
    {
        $data = $this->engine->store_nav('sortable', 'position', 'Position');
        $data['imageGet'] = $this->Common->getData('slider_range');
        $path = 'backend/jquery_ui/position_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }
}
