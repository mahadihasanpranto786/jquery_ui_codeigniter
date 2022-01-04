<div class="content-wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="card m-2">
                    <label class="pl-2 text-center pb-0" for="range">Price range:
                        <input class="pl-2 " type="text" id="range" readonly style="border:0; color:#f6931f; font-weight:bold;"></label>
                    <div id="slider"></div>
                    <table id="range" class="table table-striped mb-0">
                        <thead>
                            <tr>
                                <th>SL.</th>
                                <th>Image</th>
                                <th>Name</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tbody id="dataList">

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card mt-2">
                    <div class="card-header bg-info">
                        <h4 class=" ">Slider Add Dynamically</h4>
                    </div>
                    <form class="p-3 " method="POST" autocomplete="off" enctype="multipart/data" id="upload_form">
                        <div class="form-group">
                            <label for="formGroupExampleInput">Name</label>
                            <input type="text" name="sr_name" id="sr_name" class="form-control" placeholder="Name input">
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput">Price</label>
                            <input type="text" name="sr_price" id="sr_price" class="form-control" placeholder="Price input">
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput">Image</label>
                            <input type="file" name="sr_img" id="sr_img" class="form-control">
                        </div>
                        <div class="form-group widget">
                            <input type="hidden" name="sr_id" id="sr_id">
                            <button type="button" id="submit_form" class="ui-button ui-widget ui-corner-all">Submit</button>
                        </div>
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
            $.ajax({
                type: "POST",
                url: "<?php echo base_url("addSlider") ?>",
                data: formData,
                processData: false,
                contentType: false,
                cache: false,
                async: false,
                success: function(resp) {
                    $("#sr_name").val("")
                    $("#sr_price").val("")
                    $("#sr_img").val("")
                    showData()
                }
            })
        })

        function showData() {
            $.ajax({
                url: "<?php echo  base_url("showSliderData") ?>",
                success: function(data) {
                    $("#dataList").html(data)
                }
            })
        }
        $("#slider").slider({
            range: true,
            min: 1000,
            max: 10000,
            values: [1000, 10000],
            slide: function(event, ui) {
                var minRange = ui.values[0];
                var maxRange = ui.values[1];
                $("#range").val("$" + ui.values[0] + " - $" + ui.values[1]);
                $.ajax({
                    url: "<?php echo  base_url("slideRang") ?>",
                    type: 'post',
                    data: {
                        minPrice: minRange,
                        maxPrice: maxRange
                    },
                    success: function(response) {
                        $('#dataList').html(response);
                    }
                });
            }
        });

    })
</script>