<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Accordion extends CI_Controller
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

    public function accordionShow()
    {
        $data = $this->engine->store_nav('sortable', 'accordionShow', 'Accordion');
        $data['star'] = $this->Common->getdata('star');
        $path = 'backend/jquery_ui/accordion_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }
    public function addAccordion()
    {


        $accordionData = array(
            'a_title' => $this->input->post('title'),
            'a_country' => $this->input->post('country'),
            'a_paragraph' => $this->input->post('paragraph'),
            'a_description' => $this->input->post('description'),
            'a_car' => $this->input->post('car'),
            'a_status' => 1,
            'a_created_at' => get_current_time(),
            'a_created_by' =>  $this->logged_username,
        );

        $this->Common->insertData('accordion', $accordionData);

        $accordion = $this->db->order_by('a_id', "desc")->limit(1)->get('accordion')->row();
        $a_id =  $accordion->a_id;

        foreach ($this->input->post('dataArray') as $key) {
            $rating_star_data = array(
                's_id' => $key['data'],
                'a_id' => $a_id,
                'rs_created_at' => get_current_time(),
                'rs_created_by' => $this->logged_username,
                'rs_status' => 1
            );
            $this->Common->insertData('rating_star', $rating_star_data);
        }
    }



    public function ajaxAccordionShow()
    {
        // $dataAccordion = $this->M_jquery->table_join_multi_condition('rating_star', 'a_id', 'accordion', 'a_id', ['a_status' => 1]);;
        $dataAccordion = $this->Common->getdata('accordion');



?> <div class="accordion mt-2 form_style">
            <?php
            if ($dataAccordion) {
                foreach ($dataAccordion->result() as $row) { ?>

                    <h3><?= $row->a_title ?></h3>
                    <div>
                        <p>
                            <?= $row->a_car ?>
                        </p>
                        <p>
                            <?php
                            $dataRatting = $this->M_jquery->getRating_star($row->a_id);
                            foreach ($dataRatting->result() as $value) {
                                if ($value->s_id == 1) {
                                    echo "*One Star" . '&nbsp;&nbsp;';
                                } elseif ($value->s_id == 2) {
                                    echo "**Two Star" . '&nbsp;&nbsp;';
                                } elseif ($value->s_id == 3) {
                                    echo "***Three Star" . '&nbsp;&nbsp;';
                                } elseif ($value->s_id == 4) {
                                    echo "****Four Star" . '&nbsp;&nbsp;';
                                } elseif ($value->s_id == 5) {
                                    echo "*****Five Star";
                                }
                            } ?>
                        </p>
                        <p>
                            <?= $row->a_country ?>
                        </p>
                        <p>
                            <?= $row->a_paragraph ?>
                        </p>
                        <p>
                            <?= $row->a_description ?>
                        </p>
                    </div>


            <?php   }
            } ?>

        </div>
        <script>
            $(".accordion").accordion();
        </script>
<?php  }
}
