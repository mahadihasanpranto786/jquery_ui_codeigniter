<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menu extends CI_Controller
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

    public function menuShow()
    {
        $data = $this->engine->store_nav('sortable', 'menuShow', 'Menu');
        $data['menu'] = $this->Common->getData('menu');
        $data['subMenu'] = $this->Common->getData('sub_menu');

        $path = 'backend/jquery_ui/menu_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }
    public function addMenu()
    {
        $m_title = $this->input->post('m_title');

        $dataMenu = array(
            'm_title' => $m_title,
            'm_created_at' => get_current_time(),
            'm_created_by' => $this->logged_username,
            'm_status' => 1
        );
        $this->Common->insertData('menu', $dataMenu);
    }
    public function addSubMenu()
    {
        $m_id = $this->input->post('m_id');
        $sm_title = $this->input->post('sm_title');
        $dataMenu = array(
            'm_id' => $m_id,
            'sm_title' => $sm_title,
            'sm_created_at' => get_current_time(),
            'sm_created_by' => $this->logged_username,
            'sm_status' => 1
        );
        $this->Common->insertData('sub_menu', $dataMenu);
    }
    public function addSubSubMenu()
    {
        $sm_id = $this->input->post('sm_id');
        $ssm_title = $this->input->post('ssm_title');


        $dataMenu = array(
            'sm_id' => $sm_id,
            'ssm_title' => $ssm_title,
            'ssm_created_at' => get_current_time(),
            'ssm_created_by' => $this->logged_username,
            'ssm_status' => 1
        );
        $this->Common->insertData('sub_sub_menu', $dataMenu);
    }

    /* public function dependable_dropdown_menu()
    {
        $sub_menu = $this->input->post("sub_menu");
        $subMenuId = $this->Common->getDataMultiCondition("sub_menu", ["sm_status" => 1, "m_id" => $sub_menu]);

        if ($subMenuId) {
            echo json_encode($subMenuId->result());
        }

        // x_debug($medicine_name_by_category_id->result());
    } */

    public function menuDataView()
    {
        $menu = $this->Common->getData('menu');
        if ($menu) {
            foreach ($menu->result() as $value) { ?>
                <ul class="menu">
                    <li>
                        <div><?= $value->m_title ?></div>
                        <ul>
                            <?php
                            $subMenuData = $this->Common->getDataMultiCondition('sub_menu', ['m_id' => $value->m_id]);
                            if ($subMenuData) {
                                foreach ($subMenuData->result() as  $subValue) { ?>
                                    <li>
                                        <div><?= $subValue->sm_title ?></div>
                                        <ul>
                                            <?php
                                            $subSubMenuData = $this->Common->getDataMultiCondition('sub_sub_menu', ['sm_id' => $subValue->sm_id]);
                                            if ($subSubMenuData) {
                                                foreach ($subSubMenuData->result() as  $subSubValue) { ?>
                                                    <li id="dataID" data-id="<?= $value->m_id ?>">
                                                        <div><?= $subSubValue->ssm_title ?></div>
                                                    </li>
                                            <?php }
                                            } ?>
                                        </ul>
                                    </li>
                            <?php }
                            } ?>
                        </ul>
                    </li>
                </ul>
            <?php }
        }
    }
    public function selectData()
    {

        $subMenu = $this->Common->getData('sub_menu');
        if ($subMenu)
            foreach ($subMenu->result() as $row) { ?>
            <option value="<?= $row->sm_id ?>"><?= $row->sm_title ?></option>
        <?php }
    }
    public function selectSubData()
    {

        $menu = $this->Common->getData('menu');

        if ($menu)
            foreach ($menu->result() as $row) { ?>
            <option value="<?= $row->m_id ?>"><?= $row->m_title ?></option>
<?php }
    }
}
