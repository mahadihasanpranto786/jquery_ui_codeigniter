<div class="content-wrapper p-4">
    <div class="content">
        <div class="row">
            <div class="col-md-8">

                <div class="row" id="dataView">

                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-info">
                        <h4 class=" ">Resizable Add Dynamically</h4>
                    </div>
                    <form class="p-3" method="POST" autocomplete="off" enctype="multipart/data" id="upload_form">
                        <div class="form-group">
                            <label for="formGroupExampleInput">Name</label>
                            <input type="text" name="r_name" id="r_name" class="form-control" placeholder="name input">
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput">Image</label>
                            <input type="file" name="r_img_url" id="r_img_url" class="form-control">
                        </div>

                        <input type="hidden" name="r_id" id="r_id">
                        <button type="button" id="submit_form" class="btn btn-success">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        showData()

        $('#submit_form').click(function() {
            var formData = new FormData(document.getElementById("upload_form"));
            if ($('#r_name').val() != "" && $('#r_img_url').val() != "") {
                $.ajax({
                    type: 'POST',
                    url: "<?= base_url('addResizable'); ?>",
                    data: formData,
                    processData: false,
                    contentType: false,
                    cache: false,
                    async: false,
                    success: function(resp) {
                        Swal.fire({
                            position: 'top-end',
                            icon: 'success',
                            title: 'Successfully added data',
                            showConfirmButton: false,
                            timer: 1000,
                        });
                        $('#r_name').val("");
                        $('#r_img_url').val("");
                        showData()
                    }
                });
            }
        })

        function showData() {
            $.ajax({
                url: "<?php echo base_url('viewSortable') ?>",
                cache: false,
                success: function(data) {
                    $("#dataView").html(data)
                    var height = parseInt($('.resizable').css("height"))
                    var width = parseInt($('.resizable').css("width"))

                    $(".resizable").resizable({
                        resize: function(e, ui) {


                            var height = parseInt($('.resizable').css("height"))
                            var width = parseInt($('.resizable').css("width"))

                            var new_height = parseInt(ui.size.height) + 'px';
                            var new_width = parseInt(ui.size.width) + 'px';

                            var dataArray = [];

                            dataArray.push({
                                id: $(this).attr("data-id"),
                                new_height: parseInt(ui.size.height) + 'px',
                                new_width: parseInt(ui.size.width) + 'px'
                            })
                            $.ajax({
                                type: 'POST',
                                url: "<?php echo base_url('updateResizable') ?>",
                                data: {
                                    dataArray
                                },
                                success: function(data) {
                                    showData()
                                }
                            });
                        }


                    });
                }
            })
        }

    })
</script>