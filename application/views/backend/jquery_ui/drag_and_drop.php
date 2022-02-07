<link rel="stylesheet" href="<?php echo base_url('') ?>assets/backend/plugins/dropzone/dropzone.min.css">
<script src="<?php echo base_url('') ?>assets/backend/plugins/dropzone/dropzone.min.js"></script>
<div class="content-wrapper p-4">
    <div class="row">


        <div class="col-md-6">
            <div class="card">
                <div class="card-header bg-info">
                    <h6 class=" ">Show & Hide & Remove & Switch Data List</h6>
                </div>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">SL.</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody id="dataView">



                    </tbody>
                </table>
            </div>

        </div>
        <div class="col-md-6">
            <form action="<?php echo base_url('addDragdrop'); ?>" class="dropzone" id="dropzoneFrom">
            </form>
        </div>

    </div>
</div>


<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>


<script>
$(document).ready(function() {
    ShowData()





    function ShowData() {
        $.ajax({
            url: "<?= base_url('viewDrugAjax') ?>",
            success: function(data) {
                $("#dataView").html(data)
                // alert(data);

            }
        })
    }


})
</script>