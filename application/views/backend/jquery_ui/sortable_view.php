<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>jQuery UI Sortable - Default functionality</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <style>
        #sortable {
            list-style-type: none;
            margin: 0;
            padding: 0;
            width: 100%;
        }

        #sortable li {
            margin: 5px 5px 5px 5px;
            padding: 0.4em;
            padding-left: 1.5em;
            font-size: 1.4em;
            height: 1px;
        }

        #sortable li span {
            position: absolute;
            margin-left: -1.3em;
            margin-top: 10px;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <!-- <script>
        $(function() {
            $("#sortable").sortable();
        });
    </script> -->
</head>
<div class="content-wrapper p-4">
    <div class="content">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header bg-info">
                        <h4 class=" ">Sortable Data List</h4>
                    </div>
                    <ul id="sortable" class="">
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-info">
                        <h4 class=" ">Sortable Data Add</h4>
                    </div>
                    <form class="p-3" method="POST" autocomplete="off">
                        <div class="form-group">
                            <label for="formGroupExampleInput">Name</label>
                            <input type="text" name="s_name" id="s_name" class="form-control" placeholder="name input">
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput2">Address</label>
                            <input type="text" name="s_address" id="s_address" class="form-control" placeholder="address input">
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput2">Email</label>
                            <input type="text" name="s_email" id="s_email" class="form-control" placeholder="email input">
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput2">Phone</label>
                            <input type="text" name="s_phone" id="s_phone" class="form-control" placeholder="phone input">
                        </div>
                        <!-- <div class="form-group">
                            <label for="formGroupExampleInput2">Order</label>
                            <input type="text" name="s_order" id="s_order" class="form-control" placeholder="order input">
                        </div> -->

                        <input type="hidden" name="s_id" id="s_id">
                        <button type="button" id="submitForm" class="btn btn-success">Submit</button>
                    </form>
                </div>

            </div>

        </div>


        <div id="edit_modal" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h4 class=" ">Sortable Data Add</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                        <form class="p-3" method="POST">
                            <div class="form-group">
                                <label for="formGroupExampleInput">Name</label>
                                <input type="text" name="s_name" id="s_name_modal" class="form-control" value="" placeholder="name input">
                            </div>
                            <div class="form-group">
                                <label for="formGroupExampleInput2">Address</label>
                                <input type="text" name="s_address" id="s_address_modal" class="form-control" placeholder="address input">
                            </div>
                            <div class="form-group">
                                <label for="formGroupExampleInput2">Email</label>
                                <input type="text" name="s_email" id="s_email_modal" class="form-control" placeholder="email input">
                            </div>
                            <div class="form-group">
                                <label for="formGroupExampleInput2">Phone</label>
                                <input type="text" name="s_phone" id="s_phone_modal" class="form-control" placeholder="phone input">
                            </div>
                            <!-- <div class="form-group">
                            <label for="formGroupExampleInput2">Order</label>
                            <input type="text" name="s_order" id="s_order" class="form-control" placeholder="order input">
                        </div> -->

                            <input type="hidden" name="s_id" id="s_id_modal">
                            <button type="button" id="submitEditForm" class="btn btn-success">Update</button>

                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>
<script type='text/javascript' src="https://rawgit.com/RobinHerbots/jquery.inputmask/3.x/dist/jquery.inputmask.bundle.js"></script>
<script>

</script>
<script>
    $(document).ready(function() {
        showcard()
        //Show Data List
        function showcard() {
            $.ajax({
                url: "<?php echo base_url("ajaxViewSortable"); ?>",
                type: "POST",
                cache: false,
                success: function(data) {
                    $('#sortable').html(data);

                    // Data Show in Modal
                    $('#sortable').on('click', '.list_edit', function() {
                        $('#edit_modal').modal('show');
                        $("#s_id_modal").val($(this).data('id'));
                        $("#s_name_modal").val($(this).data('name'));
                        $("#s_address_modal").val($(this).data('address'));
                        $("#s_email_modal").val($(this).data('email'));
                        $("#s_phone_modal").val($(this).data('phone'));
                    });

                    // Updated Data List
                    $('#submitEditForm').click(function() {
                        $.ajax({
                            type: 'POST',
                            url: "<?= base_url('updateAllData'); ?>",
                            data: {
                                s_id: $("#s_id_modal").val(),
                                s_name: $('#s_name_modal').val(),
                                s_email: $('#s_email_modal').val(),
                                s_address: $('#s_address_modal').val(),
                                s_phone: $('#s_phone_modal').val(),
                            },
                            success: function(resp) {
                                $('#edit_modal').modal('hide');
                                Swal.fire({
                                    position: 'top-end',
                                    icon: 'success',
                                    title: 'Successfully Updated',
                                    showConfirmButton: false,
                                    timer: 1000,
                                });
                                showcard()
                            }
                        });
                    })


                    //For Delete List
                    $(".list_remove").click(function() {
                        var remove_id = $(this).data('id');
                        if (remove_id) {
                            $.ajax({
                                type: 'POST',
                                url: "<?php echo base_url('delete') ?>",
                                data: 's_id=' + remove_id,
                                success: function(html) {

                                    showcard();
                                }

                            });
                        }

                    });
                }
            });
        }

        //Insert Data List
        $('#submitForm').click(function() {
            if ($('#s_name').val() != "" && $('#s_address').val() != "" && $('#s_email').val() != "" && $('#s_phone').val() != "") {
                $.ajax({
                    type: 'POST',
                    url: "<?= base_url('addSortable'); ?>",
                    data: {
                        s_name: $('#s_name').val(),
                        s_address: $('#s_address').val(),
                        s_email: $('#s_email').val(),
                        s_phone: $('#s_phone').val(),
                        //s_order: $('#s_order').val(),
                    },
                    success: function(resp) {
                        Swal.fire({
                            position: 'top-end',
                            icon: 'success',
                            title: 'Successfully added data',
                            showConfirmButton: false,
                            timer: 1000,
                        });
                        $('#s_name').val("");
                        $('#s_address').val("");
                        $('#s_email').val("");
                        $('#s_phone').val("");
                        $('#s_order').val("");
                        showcard()
                    }
                });
            }
        })


        // Sortable data List
        $(function() {
            $("#sortable").sortable({
                opacity: 0.5,
                cursor: 'move',
                tolerance: 'pointer',
                revert: true,
                items: 'li',
                placeholder: 'state',
                placeholder: "ui-state-highlight",
                forcePlaceholderSize: true,
                update: function(event, ui) {
                    console.log(ui)
                    var dataArray = [];

                    $("#sortable li").each(function(index) {
                        dataArray.push({
                            id: $(this).attr("data-id"),
                            position: index + 1
                        })
                    });
                    $.ajax({
                        type: 'POST',
                        url: "<?php echo base_url('updateData') ?>",
                        data: {
                            dataArray
                        },
                        success: function(data) {
                            $.ajax({
                                url: "<?php echo base_url("ajaxViewSortable"); ?>",
                                type: "POST",
                                cache: false,
                                success: function(data) {
                                    //alert(data);
                                    $('#sortable').html(data);
                                    showcard();
                                }
                            });
                        }
                    });
                }
            }, 1000);

        });
    })
</script>