<link rel="stylesheet" href="<?php echo base_url('') ?>assets/backend/plugins/dropzone/dropzone.min.css">
<div class="content-wrapper">
    <div class="content">

        <div class="row">
            <div class="col-md-6">
                <div class="card mt-1">
                    <div class="card-header bg-info">
                        <h4 class=" ">Dialog Data List</h4>
                    </div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">SL.</th>
                                <th scope="col">Dialog Namer</th>
                                <th scope="col">Dialog Address</th>
                                <th scope="col">Dialog Description</th>
                            </tr>
                        </thead>
                        <tbody id="dataShow">

                        </tbody>
                    </table>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card mt-1">
                    <div class="card-header p-2 bg-info">
                        <div class="card-title">
                            <h5>Dialog Data Add</h5>
                        </div>
                    </div>

                    <div class="card-body">
                        <form method="POST" autocomplete="off">
                            <div class="form-group">
                                <label for="">Dialog Name</label>
                                <input type="text" class="form-control" name="d_name" id="d_name">
                            </div>
                            <div class="form-group">
                                <label for="">Dialog Type</label>
                                <input type="text" class="form-control" name="d_address" id="d_address">
                            </div>
                            <div class="form-group">
                                <label for="">Dialog Descriptions</label>
                                <textarea name="d_description" id="d_description" class="textarea"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="hidden" name="d_id" id="d_id">
                            </div>
                            <div class="form-group">
                                <button type="button" id="submitFrom"
                                    class="ui-button ui-widget ui-corner-all">Submit</button>
                            </div>
                        </form>


                    </div>
                </div>
                <div id="dialog_1" title="Update Data List">
                    <form>
                        <fieldset>
                            <div class="form-group">
                                <label for="">Dialog Name</label>
                                <input type="text" class="form-control text  ui-widget-content ui-corner-all"
                                    name="name" id="d_name_dialog">
                            </div>
                            <div class="form-group">
                                <label for="">Dialog Type</label>
                                <input type="text" class="form-control  text ui-widget-content ui-corner-all"
                                    name="address" id="d_address_dialog">
                            </div>
                            <div class="form-group">
                                <label for="">Dialog Descriptions</label>
                                <textarea name="description" id="d_description_dialog"
                                    class="textarea  ui-widget-content ui-corner-all text"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="hidden" name="d_id" id="d_id_dialog">
                                <button type="button" id="submitModal"
                                    class="ui-button ui-widget ui-corner-all">Update</button>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>



</div>
<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>
<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery-ui/jquery-ui.js"></script>
<script>
$(document).ready(function() {
    showDataList()

    function showDataList() {
        $.ajax({
            url: "<?php echo base_url("dialogAjaxView") ?>",
            success: function(dataShow) {
                $("#dataShow").html(dataShow)

                $(".list_remove").click(function() {
                    var remove_id = $(this).data('id');
                    if (remove_id) {
                        $.ajax({
                            type: 'POST',
                            url: "<?php echo base_url('deleteDaTA') ?>",
                            data: 'd_id=' + remove_id,
                            success: function(html) {

                                showDataList();
                            }

                        });
                    }

                });


                $(function() {
                    $("#dialog_1").dialog({
                        autoOpen: false,
                        show: "blind",
                        hide: "explode",
                        height: 500,
                        width: 500,
                        modal: true
                    });

                    $('#dataShow').on('click', '.loginForm', function() {
                        $('#dialog_1').dialog('open');
                        $("#d_id_dialog").val($(this).data('id'));
                        $("#d_name_dialog").val($(this).data('name'));
                        $("#d_address_dialog").val($(this).data('address'));
                        $("#d_description_dialog").val($(this).data('description'));
                        //alert($(this).data('description'))
                    });
                });
                $("#submitModal").click(function() {

                    $.ajax({
                        type: "POST",
                        url: "<?php echo base_url('dialogUpdate') ?>",
                        data: {
                            d_id: $("#d_id_dialog").val(),
                            d_name: $("#d_name_dialog").val(),
                            d_address: $("#d_address_dialog").val(),
                            d_description: $("#d_description_dialog").val(),
                            success: function(data) {
                                $('#dialog_1').dialog('close');
                                showDataList()
                            }
                        }
                    })
                })





            }
        })
    }
    $("#submitFrom").click(function() {
        $.ajax({
            type: "POST",
            url: "<?php echo base_url('dialogAdd') ?>",
            data: {
                d_name: $("#d_name").val(),
                d_address: $("#d_address").val(),
                d_description: $("#d_description").val(),
            },
            success: function(data) {
                $("#showData").html(data)
                $('#d_name').val("")
                $('#d_address').val("")
                $('#d_description').val("")
                $('.note-editing-area').children('*').text('')
                showDataList()
            }
        })
    })
})
</script>