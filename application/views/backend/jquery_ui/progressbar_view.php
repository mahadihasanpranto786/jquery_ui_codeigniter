<div class="content-wrapper p-4">
  <div class="content">

    <div class="row">
      <div class="col-md-6">
        <div class="card">
          <div class="card-header bg-info">
            <h4>View Progressbar data list</h4>
          </div>
          <table class="table table-striped mb-0">
            <thead>
              <tr>
                <th>SL.</th>
                <th>Image</th>
                <th>Name</th>
              </tr>
            </thead>
            <tbody id="dataList">

            </tbody>
          </table>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card">
          <div class="card-header bg-info">
            <h4 class=" ">Add File With Progressbar</h4>
          </div>
          <div class="p-4">
            <form id="uploadForm" enctype="multipart/form-data">
              <div class="form-group">
                <label for="formGroupExampleInput">Image information</label>
                <input type="text" name="p_name" id="p_name" class="form-control" placeholder="type image description">
              </div>
              <div class="form-group">
                <label>Choose File:</label>
                <input type="file" name="p_file" id="fileInput">
                <input type="submit" class="ui-button ui-widget ui-corner-all" name="submit" value="Submit" />
              </div>
            </form>
            <div class="progress">
              <div class="progress-bar"></div>
            </div>

            <div id="uploadStatus"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>
<script>
  $(document).ready(function() {
    showData()
    // File upload via Ajax
    $("#uploadForm").on('submit', function(e) {
      var formData = new FormData(document.getElementById("uploadForm"));
      e.preventDefault();
      $.ajax({
        xhr: function() {
          var xhr = new window.XMLHttpRequest();
          xhr.upload.addEventListener("progress", function(element) {
            if (element.lengthComputable) {
              var percentComplete = ((element.loaded / element.total) *
                100).toFixed(2);
              $(".progress-bar").width(percentComplete + '%');
              $(".progress-bar").html(percentComplete + '%');
            }
          }, false);
          return xhr;
        },
        type: 'POST',
        url: '<?php echo base_url("uploadProgress") ?>',
        data: formData,
        contentType: false,
        cache: false,
        processData: false,
        beforeSend: function() {
          $(".progress-bar").width('0%');
          $('#uploadStatus').html(`<div class="spinner-grow text-primary" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-secondary" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-success" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-danger" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-warning" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-info" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-light" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-dark" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-primary" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-secondary" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-success" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-danger" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-warning" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-info" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-light" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-dark" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-primary" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-secondary" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-success" role="status">
  <span class="sr-only">Loading...</span>
</div>
<div class="spinner-grow text-danger" role="status">
  <span class="sr-only">Loading...</span>
</div>`);
        },
        error: function() {
          $('#uploadStatus').html(
            '<p style="color:#EA4335;">File upload failed, please try again.</p>'
          );
        },
        success: function(resp) {
          if (resp == 'ok') {
            setInterval(function() {
              $(".progress-bar").width('0%');
            }, 1000);

            showData()
            $('#uploadForm')[0].reset();
            $('#uploadStatus').html(
              '<p style="color:#28A74B;">File has uploaded successfully!</p>');
          } else if (resp == 'err') {
            showData()
            $(".progress-bar").width('0%');
            $('#uploadStatus').html(
              '<p style="color:#EA4335;">Please select a valid file to upload.</p>'
            );
          }
        },
        error: function(error) {
          $(".progress-bar").width('0%');
          $('#uploadStatus').html('');
        }
      });
    });


    function showData() {
      $.ajax({
        url: "<?php echo base_url("dataShowProgressbar") ?>",
        success: function(data) {
          $("#dataList").html(data);
        }
      })
    }
    // File type validation
    /*  $("#fileInput").change(function() {
         var allowedTypes = ['application/sql', 'application/pdf', 'application/msword', 'application/vnd.ms-office', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'image/jpeg', 'image/png', 'image/jpg', 'image/gif'];
         var file = this.files[0];
         var fileType = file.type;
         if (!allowedTypes.includes(fileType)) {
             alert('Please select a valid file (PDF/DOC/DOCX/JPEG/JPG/PNG/GIF).');
             $("#fileInput").val('');
             return false;
         }
     }); */

  });
</script>