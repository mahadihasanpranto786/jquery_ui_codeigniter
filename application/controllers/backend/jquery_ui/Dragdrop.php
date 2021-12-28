<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dragdrop extends CI_Controller
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

    public function showDragdrop()
    {
        $data = $this->engine->store_nav('sortable', 'dragdrop', 'Dragdrop');
        $data['getData'] = $this->Common->getdata('dragdrop');
        $path = 'backend/jquery_ui/drag_and_drop';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }

    public function addDragdrop()
    {
        $uploadPath = 'assets/uploads/files/';
        $config['upload_path'] = $uploadPath;
        $config['allowed_types'] = '*';

        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if ($this->upload->do_upload('file')) {
            $fileData = $this->upload->data('file_name');
            $data = array(
                'd_file_name'  => $fileData,
                'd_created_at' => get_current_time(),
                'd_created_by' =>  $this->loged_username,
            );
            $this->db->insert('dragdrop', $data);
            redirect('showDragdrop');
        }
    }

    public function viewDrugAjax()
    {
        $getData = $this->Common->getdata('dragdrop');
        if ($getData) {
            foreach ($getData->result() as $row) {
                $filePath = 'assets/uploads/files/' . $row->d_file_name;
                $fileMime = mime_content_type($filePath);
?>
                <tr>
                    <td><embed src="<?php echo base_url('assets/uploads/files/' . $row->d_file_name); ?>" type="<?php echo $fileMime; ?>" width="100px" height="100px" /></td>
                    <td>
                        <button type="button">button</button>
                    </td>
                </tr>
<?php
            }
        }
    }
}
