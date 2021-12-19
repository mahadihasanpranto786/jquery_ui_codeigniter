<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Administrator extends CI_Controller
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
        // $this->load->model('User');
    }

    public function index()
    {
        $data = $this->engine->store_nav('dashboard', 'Nothing', 'Welcome to dashboard');
        $today = get_current_date();
        $data['callPatient'] = $this->Global_model->multipleTableData('patient_basic_info', 'p_id', 'on_call_shedule_by_ptient_status', 'ocs_p_id', 'ocs_status', $today);
        $data['getTodayPatient'] =  $this->M_patient->getTodayPatientList($today);
        $path = 'backend/administrator/dashboard';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }
}
