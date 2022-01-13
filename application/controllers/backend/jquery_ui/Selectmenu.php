<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Selectmenu extends CI_Controller
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


    public function showSelectMenu()
    {
        $data = $this->engine->store_nav('sortable', 'showSelectMenu', 'SelectMenu');
        $data['menuList'] = $this->Common->getData('menu');
        $data['subMenuList'] = $this->Common->getData('sub_menu');
        $data['subSubMenuList'] = $this->Common->getData('sub_sub_menu');
        $path = 'backend/jquery_ui/Selectmenu_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }
    public function getMenuDependable()
    {
        $menu_id = $this->input->post("menu_id");
        $menu_name = $this->Common->getDataMultiCondition("sub_menu", ["m_id" => $menu_id]);
        if ($menu_name) {
            echo json_encode($menu_name->result());
        }
    }
    public function getSubMenuDependable()
    {
        $sub_menu_id = $this->input->post("sub_menu_id");
        $sub_menu_name = $this->Common->getDataMultiCondition("sub_sub_menu", ["sm_id" => $sub_menu_id]);
        if ($sub_menu_name) {
            echo json_encode($sub_menu_name->result());
        }
    }
    public function addSelectMenu()
    {




        $menu_id = $this->input->post("menu_id");
        $sub_menu_id = $this->input->post("sub_menu_id");
        $sub_sub_menu_id = $this->input->post("sub_sub_menu_id");

        $dataSelectMenu = array(
            's_menu_title' => $menu_id,
            's_menu_sub_title' => $sub_menu_id,
            's_menu_sub_sub_title' => $sub_sub_menu_id,
            's_menu_created_at' => get_current_time(),
            's_menu_created_by' => $this->logged_username,
            's_menu_status' => 1,
        );
        $this->Common->insertData('selectmenu', $dataSelectMenu);
    }
    public function showSelectMenuList()
    {

        $menuDataList = $this->Common->getDataMultiCondition('selectmenu', ['s_menu_status' => 1]);
        $sl = 1;
        if ($menuDataList) {
            foreach ($menuDataList->result() as $value) { ?>
                <tr>
                    <td class="table-teal">
                        <?= $sl++ ?>
                    </td>
                    <td class="table-teal">
                        <?= $value->s_menu_title ?>
                    </td>

                    <td class="table-teal">
                        <?= $value->s_menu_sub_title ?>
                    </td>
                    <td class="table-teal">
                        <?= $value->s_menu_sub_sub_title ?>
                    </td>
                    <td class="table-teal">
                        <button class="loginForm ml-1 ui-button ui-widget ui-corner-all bg-success" data-id="<?= $value->s_menu_id ?>" data-name="<?= $value->s_menu_title ?>" data-sub-name="<?= $value->s_menu_sub_title ?>" data-sub-sub-name="<?= $value->s_menu_sub_sub_title ?>">Edit</button>
                        <button type="button" data-id="<?= $value->s_menu_id ?>" class="bg-danger remove ui-button float-right ui-widget ui-corner-all" id="submitForm">Delete</button>
                    </td>
                </tr>
<?php }
        }
    }
    public function deleteMenu()
    {

        $menu_id = $this->input->post("s_menu_id");
        $dataArray = array(
            's_menu_id' => $menu_id,
            's_menu_created_at' => get_current_time(),
            's_menu_created_by' => $this->logged_username,
            's_menu_status' => 0,
        );

        $this->Common->update_data('selectmenu', 's_menu_id', $menu_id, $dataArray);
    }
}
