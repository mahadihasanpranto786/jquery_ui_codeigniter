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
            width: 60%;
        }

        #sortable li {
            margin: 0 3px 3px 3px;
            padding: 0.4em;
            padding-left: 1.5em;
            font-size: 1.4em;
            height: 18px;
        }

        #sortable li span {
            position: absolute;
            margin-left: -1.3em;
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

                        <?php
                        if ($sortableList) {
                            // x_debug($sortableList->result());
                            foreach ($sortableList->result() as $row) { ?>

                                <li class="ui-state-default" style="padding-bottom: 180px;" data-id="<?php echo $row->s_id ?>">

                                    <span class="ui-icon ui-icon-arrowthick-2-n-s">a</span>
                                    <?php echo  $row->s_name ?> <br>
                                    <?php echo   $row->s_address ?> <br>
                                    <?php echo $row->s_email ?> <br>
                                    <?php echo   $row->s_phone ?> <br>
                                    <?php // echo $row->s_order  
                                    ?>

                                </li>
                        <?php  }
                        } ?>
                        <button id="submit" type="button">Add</button>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-info">
                        <h4 class=" ">Sortable Data Add</h4>
                    </div>
                    <form class="p-3" method="POST">
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
    </div>
</div>

<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>
<script type='text/javascript' src="https://rawgit.com/RobinHerbots/jquery.inputmask/3.x/dist/jquery.inputmask.bundle.js"></script>
<script>
    // $(document).ready(function() {
    //     $("#sortable").sortable({

    //         placeholder: "ui-state-highlight",
    //         update: function(event, ui) {
    //             data: $(this).sortable("serialize"),
    //             alert(serialize);
    //             $.ajax({
    //                 url: "<?php echo base_url('addSortable') ?>",
    //                 type: 'POST',
    //                 data: {
    //                     's_order': $("#sortable").sortable('toArray'),
    //                 },
    //                 success: function(data) {
    //                     alert(data);
    //                 }

    //             });

    //         }

    //     });

    //     $("#sortable").disableSelection();
    // });
    $(function() {
        $("#sortable").sortable({
            opacity: 0.6,

            cursor: 'move',
            tolerance: 'pointer',
            revert: true,
            items: 'li',
            placeholder: 'state',
            forcePlaceholderSize: true,
            update: function(event, ui) {

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
                    success: function(data) {}
                });
            }
        });

        $("#sortable").disableSelection();
    });
</script>
<script>
    $('#submitForm').click(function() {

        $.ajax({
            type: 'POST',
            url: "<?= base_url('addSortable'); ?>",
            data: {
                s_name: $('#s_name').val(),
                s_address: $('#s_address').val(),
                s_email: $('#s_email').val(),
                s_phone: $('#s_phone').val(),
                // s_order: $('#s_order').val(),
            },
            success: function(resp) {
                alert(resp);
                // $('#s_name').val("");
                // $('#s_address').val("");
                // $('#s_email').val("");
                // $('#s_phone').val("");
                // $('#s_order').val("");
            }
        });
    })
</script>