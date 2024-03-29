<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Common extends CI_Model
{

	function insertData($table, $data)
	{
		$this->db->insert($table, $data);
	}
	public function set_data($table, $data)
	{
		$this->db->trans_start();
		$this->db->insert($table, $data);
		$returnValue = $this->db->insert_id();
		$this->db->trans_complete();
		if ($this->db->trans_status() === FALSE) {
			$error = $this->db->error();
			return $error;
		} else {
			return $returnValue;
		}
	}
	public function get_data($table)
	{
		$this->db->order_by("s_order");
		$query = $this->db->get($table);
		if ($this->db->affected_rows() > 0) {
			return $query;
		} else {
			return FALSE;
		}
	}

	public function insert($data = array())
	{
		$insert = $this->db->insert('dragdrop', $data);
		return $insert ? true : false;
	}
	public function getData($table)
	{
		$query = $this->db->get($table);
		if ($this->db->affected_rows() > 0) {
			return $query;
		} else {
			return FALSE;
		}
	}
	public function get_data_multi_conditional($table, $data)
	{
		$this->db->where($data);
		$query = $this->db->get($table);
		return $query;
	}
	public function get_data_single_conditional($table, $index, $data)
	{
		$this->db->where($index, $data);
		$query = $this->db->get($table);
		return $query;
	}
	public function get_single_row_information($table, $index, $data)
	{
		$this->db->where($index, $data);
		$query = $this->db->get($table);
		if ($this->db->affected_rows() > 0) {
			return $query->row();
		} else {
			return FALSE;
		}
	}
	public function get_data_row_multi_conditional($table, $data)
	{
		$this->db->where($data);
		$query = $this->db->get($table);
		if ($this->db->affected_rows() > 0) {
			return $query->row();
		} else {
			return FALSE;
		}
	}
	function delete_data($table, $index, $data)
	{
		$this->db->where($index, $data);
		$this->db->delete($table);

		if ($this->db->affected_rows() > 0) {
			return true;
		} else {
			return false;
		}
	}
	public function update_data($table, $index, $identifier, $data)
	{
		$this->db->where($index, $identifier);
		$this->db->update($table, $data);
		if ($this->db->affected_rows() > 0) {
			return true;
		} else {
			return false;
		}
	}
	public function count_data($table, $index, $data)
	{
		$this->db->where($index, $data);
		$this->db->get($table);
		if ($this->db->affected_rows() > 0) {
			return $this->db->affected_rows();
		} else {
			return 0;
		}
	}
	public function sql_excute($sql)
	{
		$query = $this->db->query($sql);
		return $query;
	}
	function getDataMultiCondition($table, $data)
	{
		$this->db->where($data);
		return $this->db->get($table);
	}
	public function getDataByOrder($table, $ID, $IdentifyOrder)
	{
		$this->db->order_by(("$ID"), $IdentifyOrder);
		$query = $this->db->get($table);
		if ($this->db->affected_rows() > 0) {
			return $query;
		} else {
			return FALSE;
		}
	}
}
