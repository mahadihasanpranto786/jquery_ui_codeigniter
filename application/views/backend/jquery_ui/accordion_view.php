<link rel="stylesheet" href="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery-ui.css">
<style>
    .ui-state-active,
    .ui-widget-content .ui-state-active,
    .ui-widget-header .ui-state-active,
    a.ui-button:active,
    .ui-button:active,
    .ui-button.ui-state-active:hover {
        border: 1px solid #003eff;
        background: #007fff;
        font-weight: 700 !important;
        color: #ffffff;
    }
</style>
<div class="content-wrapper">
    <div class="content">

        <div class="row">
            <div class="col-md-6">
                <div class="accordion">
                </div>
            </div>
            <div class="col-md-6">

                <form class="p-3" id="valueFrom" method="POST" autocomplete="off">
                    <div class="widget">
                        <fieldset>
                            <legend class="bg-info card p-1">
                                <h6>Select a Location: </h6>
                            </legend>

                            <div class="d-inline">
                                <input class="ui_radio" type="radio" value="Bangladesh" name="country" id="radio_1">
                                <label for="radio_1">Bangladesh</label>
                            </div>
                            <div class="d-inline">
                                <input class="ui_radio" type="radio" value="Paris" name="country" id="radio_2">
                                <label for="radio_2">Paris</label>
                            </div>

                            <div class="d-inline">
                                <input class="ui_radio" type="radio" value="London" name="country" id="radio_3">
                                <label for="radio_3">London</label>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="bg-info card p-1 ">
                                <h6>Developing Ratings: </h6>
                            </legend>
                            <label for="a_one_star">1 Star</label>
                            <input class="ui_radio" type="checkbox" value="1" name="one_star" id="a_one_star">
                            <label for="a_two_star">2 Star</label>
                            <input class="ui_radio" type="checkbox" value="2" name="two_star" id="a_two_star">
                            <label for="a_three_star">3 Star</label>
                            <input class="ui_radio" type="checkbox" value="3" name="three_star" id="a_three_star">
                            <label for="a_four_star">4 Star</label>
                            <input class="ui_radio" type="checkbox" value="4" name="four_star" id="a_four_star">
                            <label for="a_five_star">5 Star</label>
                            <input class="ui_radio" type="checkbox" value="5" name="five_star" id="a_five_star">
                        </fieldset>
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Accordion Title</label>
                        <input type="text" name="title" id="a_title" class="form-control" placeholder="Accordion input">
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Paragraph</label>
                        <input type="text" name="paragraph" id="a_paragraph" class="form-control" placeholder="Paragraph input">
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Description</label>
                        <input type="text" name="description" id="a_description" class="form-control" placeholder="Description input">
                    </div>
                    <div class="form-group widget">
                        <input type="hidden" name="a_id" id="a_id">
                        <button type="button" id="submitFrom" class="ui-button ui-widget ui-corner-all">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>

<script>
    $(document).ready(function() {
        showData()

        $(".accordion").accordion();
        $(".ui_radio").checkboxradio();


        function showData() {
            $.ajax({
                url: "<?php echo base_url("ajaxAccordionShow") ?>",
                success: function(data) {
                    $('.accordion').html(data);
                }
            })
        }
        $("#submitFrom").click(function() {
            // var formData = new FormData(document.getElementById("valueFrom"));
            $.ajax({
                type: "POST",
                url: "<?= base_url("addAccordion") ?>",
                data: {
                    country: $('input[name="country"]').val(),
                    one_star: $('#a_one_star').val(),
                    two_star: $('#a_two_star').val(),
                    three_star: $('#a_three_star').val(),
                    four_star: $('#a_four_star').val(),
                    five_star: $('#a_five_star').val(),
                    title: $('#a_title').val(),
                    paragraph: $('#a_paragraph ').val(),
                    description: $('#a_description ').val(),
                },

                success: function(data) {
                    $(".accordion").html(data)
                    Swal.fire({
                        position: 'top-end',
                        icon: 'success',
                        title: 'Successfully added data',
                        showConfirmButton: false,
                        timer: 1000,
                    });
                    $('input[name="country"]').prop('checked', false).checkboxradio('refresh')
                    $('#a_one_star').prop('checked', false).checkboxradio('refresh')
                    $('#a_two_star').prop('checked', false).checkboxradio('refresh')
                    $('#a_three_star').prop('checked', false).checkboxradio('refresh')
                    $('#a_four_star').prop('checked', false).checkboxradio('refresh')
                    $('#a_five_star').prop('checked', false).checkboxradio('refresh')
                    $('#a_title').val("")
                    $('#a_paragraph ').val("")
                    $('#a_description ').val("")
                    showData()
                }
            })

        })

    })
</script>