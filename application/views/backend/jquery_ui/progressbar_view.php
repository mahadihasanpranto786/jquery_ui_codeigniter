<div class="content-wrapper p-4">
    <div class="content">

        <div class="row">
            <div class="col-md-6">

            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header bg-info">
                        <h4 class=" ">Add File With Progressbar</h4>
                    </div>
                    <form id="upload-form" class="upload-form" method="post">
                        <form method="post" action="" id="upload_file">
                            <label for="title">Title</label>
                            <input type="text" name="title" id="title" value="" />

                            <label for="userfile">File</label>
                            <input type="file" name="userfile" id="userfile" size="20" />

                            <input type="submit" name="submit" id="submit" />
                        </form>
                        <h2>Files</h2>
                        <div id="files"></div>
                    </form>
                    <hr>
                    <div class="row p-4 align-items-center">
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
            </div>
        </div>



    </div>
</div>