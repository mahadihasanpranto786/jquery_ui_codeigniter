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
	public function ajaxViewSortable()
	{
		$sortableList = $this->Common->get_data('sortable');
		$i = 1;
		if ($sortableList) {
			foreach ($sortableList->result() as $row) { ?>
				<tr class="trList" data-id='<?= $row->s_id ?>'>
					<td><?= $row->s_order ?></td>
					<td><?= $row->s_name ?></td>
					<td><?= $row->s_email ?></td>
					<td><?= $row->s_phone ?></td>
					<td><?= $row->s_address ?></td>
					<td><button id="dataID" data-id='<?= $row->s_id ?>' data-name='<?= $row->s_name ?>' data-address='<?= $row->s_address ?>' data-email='<?= $row->s_email ?>' data-phone='<?= $row->s_phone ?>' type='button' data-toggle='modal' class='btn btn-sm bg-success list_edit'>Edit</button>&nbsp;<button data-id='<?= $row->s_id ?>' type='button' class='btn btn-sm bg-danger list_remove'>Delete</button></td>
				</tr>
<?php }
		}
	}
	/* public function ajaxViewSortable()
    {
        $sortableList = $this->Common->get_data('sortable');
        $i = 1;
        if ($sortableList) {
            foreach ($sortableList->result() as $row) {
                echo "<li class='ui-state-default' style='padding-bottom: 60px;' data-id='$row->s_id'><span class='ui-icon ui-icon-arrowthick-2-n-s'>a</span>" .

                    $row->s_name  . '&nbsp;&nbsp;&nbsp;&nbsp;'  .
                    $row->s_email . '&nbsp;&nbsp;&nbsp;&nbsp;' .
                    $row->s_phone . '&nbsp;&nbsp;&nbsp;&nbsp;' .
                    $row->s_address . '&nbsp;&nbsp;&nbsp;&nbsp;' .
                    $row->s_order . '&nbsp;&nbsp;&nbsp;&nbsp;' . "<button data-id='$row->s_id' data-name='$row->s_name' data-address='$row->s_address'data-email='$row->s_email' data-phone='$row->s_phone' type='button'  data-toggle='modal' class='btn btn-sm bg-success list_edit'>Edit</button>&nbsp;<button data-id='$row->s_id' type='button' class='btn btn-sm bg-danger list_remove'>Delete</button></li>";


                $i++;
            }
        }
    } */

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

		//         $orderArray = array('s_order' => $row['position']);
		//         // x_debug($orderArray);
		//         $this->Common->update_data('sortable', 's_id', $value->s_id, $orderArray);
		//         // }
		//     }
		// }
	}
	public function delete()

	{
		$id = $this->input->post('s_id');
		$this->db->where('s_id', $id);
		$this->db->delete('sortable');
		echo json_encode(['success' => true]);
	}
	public function updateAllData()

	{

		$id = $this->input->post('s_id');

		//$max = $this->db->query('select max(`s_order`) as s_order from sortable')->row()->s_order;
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
			//'s_order' => $max + 1,
			's_status' => 1,
			's_created_at' => get_current_time(),
			's_created_by' =>  $this->loged_username,
		);

		$this->Common->update_data('sortable', 's_id', $id,  $data);
	}
}
