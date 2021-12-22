<div class="content-wrapper p-4">
    <div class="content">
        <section class="showcase">
            <div class="container">
                <form id="upload-form" class="upload-form" method="post">
                    <div class="row align-items-center">
                        <div class="form-group col-md-9">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="upl_file">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                            <span id="chk-error"></span>
                        </div>
                        <div class="form-group col-md-3">
                            <button type="submit" class="btn btn-primary float-left" id="upload-file"><i class="fa fa-upload" aria-hidden="true"></i> Upload</button>
                        </div>
                    </div>
                </form>
                <hr>
                <div class="row align-items-center">
                    <div class="col">
                        <div class="progress" style="display: none;">
                            <div id="file-progress-bar" class="progress-bar"></div>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col">
                        <div id="uploaded_file"></div>
                    </div>
                </div>

            </div>
        </section>

    </div>
</div>
<!-- Bootstrap core JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">
    jQuery(document).on('submit', '#upload-form', function(e) {
        jQuery("#chk-error").html('');
        jQuery('.progress').show();
        e.preventDefault();
        $.ajax({
            xhr: function() {
                var xhr = new window.XMLHttpRequest();
                xhr.upload.addEventListener("progress", function(element) {
                    if (element.lengthComputable) {
                        var percentComplete = ((element.loaded / element.total) * 100);
                        $("#file-progress-bar").width(percentComplete + '%');
                        $("#file-progress-bar").html(percentComplete + '%');
                    }
                }, false);
                return xhr;
            },
            type: 'POST',
            url: "<?php echo base_url(); ?>upload/upl",
            data: new FormData(this),
            contentType: false,
            cache: false,
            processData: false,
            dataType: 'json',
            beforeSend: function() {
                $("#file-progress-bar").width('0%');
            },

            success: function(json) {
                if (json == 'success') {
                    $('#upload-form')[0].reset();
                    $('#uploaded_file').html('<p style="color:#28A74B;">File has uploaded successfully!</p>');
                } else if (json == 'failed') {
                    $('#uploaded_file').html('<p style="color:#EA4335;">Please select a valid file to upload.</p>');
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    // Check File type validation
    $("#upl-file").change(function() {
        var allowedTypes = ['image/jpeg', 'image/png', 'image/jpg', 'image/gif', 'application/pdf', 'application/msword', 'application/vnd.ms-office', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'];
        var file = this.files[0];
        var fileType = file.type;
        if (!allowedTypes.includes(fileType)) {
            jQuery("#chk-error").html('<small class="text-danger">Please choose a valid file (JPEG/JPG/PNG/GIF/PDF/DOC/DOCX)</small>');
            $("#upl-file").val('');
            return false;
        } else {
            jQuery("#chk-error").html('');
        }
    });
</script>

<script>
    // Add the following code if you want the name of the file appear on select
    $(".custom-file-input").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
</script>