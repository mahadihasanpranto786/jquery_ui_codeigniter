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

        $this->loged_username = $this->session->userdata('currentActiveId');
    }

    public function accordionShow()
    {
        $data = $this->engine->store_nav('sortable', 'accordionShow', 'Accordion');
        // $data['datepickerList'] = $this->Common->getdata('autocomplete');
        $path = 'backend/jquery_ui/accordion_view';
        $this->engine->render_view($data, $path, $this->side_menu, $this->main_layout);
    }
    public function addAccordion()
    {
        $accordionData = array(
            'a_title' => $this->input->post('title'),
            'a_country' => $this->input->post('country'),
            'a_one_star' => $this->input->post('one_star'),
            'a_two_star' => $this->input->post('two_star'),
            'a_three_star' => $this->input->post('three_star'),
            'a_four_star' => $this->input->post('four_star'),
            'a_five_star' => $this->input->post('five_star'),
            'a_paragraph' => $this->input->post('paragraph'),
            'a_description' => $this->input->post('description'),
            'a_status' => 1,
            'a_created_at' => get_current_time(),
            'a_created_by' =>  $this->loged_username,
        );

        $this->Common->insertData('accordion', $accordionData);
    }

    public function ajaxAccordionShow()
    {
        $dataAccordion = $this->Common->getdata('accordion');
?> <div class="accordion">
            <?php
            if ($dataAccordion) {
                foreach ($dataAccordion->result() as $row) { ?>

                    <h3><?= $row->a_title ?></h3>
                    <div>
                        <p>
                            <?= $row->a_country ?>
                        </p>
                        <p>
                            <?= $row->a_one_star ?>,&nbsp;&nbsp;<?= $row->a_two_star ?>,&nbsp;&nbsp;<?= $row->a_three_star ?>&nbsp;&nbsp;<?= $row->a_four_star ?>&nbsp;&nbsp;<?= $row->a_five_star ?>
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
