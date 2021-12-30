<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_jquery extends CI_Model
{

    public function table_join_multi_condition($titleTableName, $titlePrimaryKey, $idTableName, $idPrimaryKey, $data)
    {

        $this->db->join($titleTableName, $titleTableName . "." . $titlePrimaryKey . '=' . $idTableName . "." . $idPrimaryKey);
        $this->db->where($data);
        return $this->db->get($idTableName);
    }

    function getRating_star($a_id)
    {
        $this->db->where('a_id', $a_id);
        $query = $this->db->get('rating_star');
        return $query;
    }
}
