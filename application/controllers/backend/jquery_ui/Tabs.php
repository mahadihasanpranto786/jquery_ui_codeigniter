<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tabs extends CI_Controller
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


    public function viewTabs()
    {
        $data = $this->engine->store_nav('sortable', 'viewTabs', 'Tabs');
        // $data['sortableList'] = $this->Common->get_data('sortable');
        $path = 'backend/jquery_ui/tabs_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }
    public function addTabs()
    {

        $max = $this->db->query('select max(`t_position`) as t_position from tabs')->row()->t_position;
        $t_title = $this->input->post("t_title");
        $t_description = $this->input->post("t_description");
        $dataArray = array(
            't_title' => $t_title,
            't_description' => $t_description,
            't_position' => $max + 1,
            't_created_at' => get_current_time(),
            't_created_by' => $this->logged_username,
            't_status' => 1
        );
        $this->Common->insertData('tabs', $dataArray);
    }
    public function showTabs()
    {
        $tabsListDataGet = $this->Common->getDataByOrder('tabs', 't_position', '')

?>

        <h4 class="bg-lightblue p-1 text-center">You can sort the tabs section</h4>
        <div class="tabs">
            <ul>
                <?php if ($tabsListDataGet) {
                    foreach ($tabsListDataGet->result() as  $value) { ?>
                        <li id="getId" data-id="<?= $value->t_id ?>"><a href="<?php echo "#$value->t_id" ?>"><?= $value->t_title ?></a></li>
                <?php }
                } ?>
            </ul>
            <?php if ($tabsListDataGet) {
                foreach ($tabsListDataGet->result() as  $value) { ?>
                    <div data-id="<?= $value->t_id ?>" id="<?php echo "$value->t_id" ?>">
                        <p><?= $value->t_description ?></p>
                    </div>
            <?php }
            } ?>
        </div>
<?php }

    public function updateTabs()
    {
        foreach ($this->input->post('arrayData') as $key) {
            $this->Common->update_data('tabs', 't_id', $key["id"], ["t_position" => $key["position"]]);
        }
    }
}
