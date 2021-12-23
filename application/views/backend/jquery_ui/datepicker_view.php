<div class="content-wrapper p-4">
    <div class="content">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header bg-info">
                        <h4 class=" ">Datepicker Data List</h4>
                    </div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">SL.</th>
                                <th scope="col">Name</th>
                                <th scope="col">Date</th>
                            </tr>
                        </thead>
                        <tbody id="dataShow">

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-info">
                        <h4 class=" ">Datepicker Add Dynamically</h4>
                    </div>
                    <form class="p-3" method="POST" autocomplete="off">
                        <div class="form-group">
                            <label for="formGroupExampleInput">Name</label>
                            <input type="text" name="d_name" id="d_name" class="form-control" placeholder="name input">
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput">Name</label>
                            <input type="text" name="d_date" id="d_date" class="form-control datepicker">
                        </div>

                        <input type="hidden" name="d_id" id="d_id">
                        <button type="button" id="submitForm" class="btn btn-success">Submit</button>
                    </form>
                </div>

            </div>

        </div>


    </div>
</div>


<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>
<script>
    $(function() {
        $.datepicker._gotoToday = function(id) {
            $(id).datepicker('setDate', new Date()).datepicker('hide').blur();
        };
        $(".datepicker").datepicker({
            showButtonPanel: true,
            changeMonth: true,
            changeYear: true,
            inline: true,
            showWeek: true,
        });
        $(".datepicker").datepicker("option", "showAnim", "fold");

    });
</script>
<script>
    $(document).ready(function() {
        showcard()
        //Show Data List
        function showcard() {
            $.ajax({
                url: "<?php echo base_url("datepickerShowAjax"); ?>",
                type: "POST",
                cache: false,
                success: function(data) {

                    $('#dataShow').html(data);
                    $(".data_remove").click(function() {
                        var remove_id = $(this).data('id');
                        $.ajax({
                            type: 'POST',
                            url: "<?php echo base_url('deleteData') ?>",
                            data: 'd_id=' + remove_id,
                            success: function(html) {

                                showcard();
                            }
                        });
                    });
                }
            });

        }
        $('#submitForm').click(function() {
            if ($('#d_name').val() != "" && $('#d_date').val()) {
                $.ajax({
                    type: 'POST',
                    url: "<?= base_url('datepickerAdd'); ?>",
                    data: {
                        d_name: $('#d_name').val(),
                        d_date: $('#d_date').val(),
                    },
                    success: function(resp) {
                        Swal.fire({
                            position: 'top-end',
                            icon: 'success',
                            title: 'Successfully added data',
                            showConfirmButton: false,
                            timer: 1000,
                        });
                        $('#d_name').val("");
                        $('#d_date').val("");
                        showcard()
                    }
                });
            }
        })


    })
</script>