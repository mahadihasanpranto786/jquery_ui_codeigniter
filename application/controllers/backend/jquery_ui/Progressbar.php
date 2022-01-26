<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Progressbar extends CI_Controller
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

    // index method
    public function progressbarView()
    {
        $data = $this->engine->store_nav('sortable', 'progressbar', 'Welcome to dashboard');
        // $data['sortableList'] = $this->Common->get_data('sortable');
        $path = 'backend/jquery_ui/progressbar_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }
    // Upload file/image method
    public function uploadProgress()
    {
        /*  $this->load->library('upload'); */
        $p_name = $this->input->post('p_name');
        $upload = 'err';
        $config = array(
            'file_name' => $_FILES['p_file']['name'],
            'upload_path' => "assets/uploads/files/",
            'allowed_types' => "gif|jpg|jpeg|png|bmp|pdf|doc|docx|sql|mp4",
        );

        $this->load->library('Upload', $config);
        $this->upload->initialize($config);

        if ($this->upload->do_upload('p_file')) {
            $path = $this->upload->data();
            $p_file = $path['file_name'];
            $dataArray = array(
                'p_file' => $p_file,
                'p_name' => $p_name,
                'p_created_at' => get_current_time(),
                'p_created_by' => $this->logged_username,
                'p_status' => 1,
            );
            $this->Common->insertData('progressbar', $dataArray);
            $upload = 'ok';
        } else {
            $dataArray = array(
                'p_name' => $p_name,
                'p_created_at' => get_current_time(),
                'p_created_by' => $this->logged_username,
                'p_status' => 1,
            );
            $this->Common->insertData('progressbar', $dataArray);
            $upload = 'ok';
        }
        echo $upload;
    }
    public function dataShowProgressbar()
    {
        $dataGet = $this->Common->getData('progressbar');
        if ($dataGet) {
            $sl = 1;
            foreach ($dataGet->result() as $value) {
                $filePath = 'assets/uploads/files/' . $value->p_file;
                $fileMime = mime_content_type($filePath); ?>
                <tr>
                    <td><?= $sl++ ?></td>
                    <td>
                        <?php if ($value->p_name) { ?>
                            <?= $value->p_name ?>
                        <?php } else {
                            echo "<p class='text-danger'>No Title</p>";
                        } ?>
                    </td>
                    <td>
                        <?php if ($value->p_file) { ?>
                            <img class="img-rounded" src="<?php echo base_url('assets/uploads/files/' . $value->p_file); ?>" type="<?php echo $fileMime; ?>" width="60px" height="60px" />
                        <?php } else {
                            echo "<p class='text-danger'>No file</p>";
                        } ?>
                    </td>
                </tr>
<?php    }
        } else {
            echo "<p class='p-3 text-center text-danger'>No Data Found</p>";
        }
    }
}
