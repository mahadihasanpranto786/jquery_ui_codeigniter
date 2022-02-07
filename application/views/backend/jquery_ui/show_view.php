<style>
.newClass {
    text-indent: 40px;
    letter-spacing: .4em;
    width: 410px;
    height: 100px;
    padding: 30px;
    margin: 10px;
    font-size: 1.6em;
}

.anotherNewClass {
    text-indent: 40px;
    letter-spacing: .2em;
    width: 410px;
    height: 100px;
    padding: 30px;
    margin: 10px;
    font-size: 1.1em;
}
</style>

</head>

<body>
    <div class="content-wrapper p-4">
        <div class="content">

            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h6 class=" ">Show & Hide & Remove & Switch Data List</h6>
                        </div>
                        <table class="table table-striped" id="example1">
                            <thead>
                                <tr>
                                    <th scope="col">SL.</th>
                                    <th scope="col">Textarea 1</th>
                                    <th scope="col">Textarea 2</th>
                                    <th scope="col">Textarea 3</th>
                                    <th scope="col">Textarea 3</th>
                                    <th scope="col">Textarea 3</th>
                                </tr>
                            </thead>
                            <tbody id="effect">

                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h5 class="">Show & Hide & Remove & Switch Data Add</h5>
                        </div>
                        <form class="p-3" method="POST" autocomplete="off">

                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">Example textarea</label>
                                <textarea class="form-control" name="s_text_area1" id="s_text_area1"
                                    rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">Example textarea</label>
                                <textarea class="form-control" name="s_text_area2" id="s_text_area2"
                                    rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">Example textarea</label>
                                <textarea class="form-control" name="s_text_area3" id="s_text_area3"
                                    rows="3"></textarea>
                            </div>

                            <input type="hidden" name="s_id" id="s_id">
                            <button type="button" id="submitForm" class="btn btn-success">Submit</button>
                            <span><button type="button" id="switchClass" class="btn btn-warning">Switch</button></span>
                            <button type="button" id="REMOVEClass" class="btn float-right btn-warning ">Remove & Add
                            </button>

                            <button type="button" id="button" class="btn float-right btn-warning mr-1">Effect</button>

                        </form>
                    </div>

                </div>

            </div>

        </div>
    </div>


    <script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>
    <script>
    $(function() {
        // run the currently selected effect
        function runEffect() {
            // get effect type from
            var selectedEffect = $("#effectTypes").val();

            // Most effect types need no options passed by default
            var options = {};
            // some effects have required parameters
            if (selectedEffect === "scale") {
                options = {
                    percent: 50
                };
            } else if (selectedEffect === "size") {
                options = {
                    to: {
                        width: 280,
                        height: 185
                    }
                };
            }
            // $("#effect").effect("explode", 500);
            // Run the effect
            // $("#effect").show("shake", 500, callback);
            $("#effect").hide("shake", 1000, callback);
        };

        //callback function to bring a hidden box back
        function callback() {
            setTimeout(function() {
                // $("#effect:visible").removeAttr("style").fadeOut();
                $("#effect").removeAttr("style").hide().fadeIn();
            }, 1000);
        };
        $(function() {
            $("#REMOVEClass").on("click", function() {
                $("#effect").removeClass("anotherNewClass", 1000);
                $("#effect").addClass("anotherNewClass", 1300);
            });
        })

        $(function() {
            $("#switchClass").on("click", function() {
                $(".newClass").switchClass("newClass", "anotherNewClass", 1000);
                $(".anotherNewClass").switchClass("anotherNewClass", "newClass", 1000);
            });
        });

        $("#effect").hide().toggle("highlight", 500);
        // Set effect from select menu value
        $(function() {
            var state = true;
            $("#button").on("click", function() {
                if (state) {
                    $("#effect").animate({
                        backgroundColor: "#28a745",
                        color: "#fff",
                        width: 500
                    }, 1000);
                } else {
                    $("#effect").animate({
                        backgroundColor: "#fff",
                        color: "#000",
                        width: 240
                    }, 1000);
                }
                state = !state;
            });
        });

        $("#submitForm").on("click", function() {

            if ($('#s_text_area1').val() != "" && $('#s_text_area2').val() != "" && $('#s_text_area3')
                .val()) {
                $.ajax({
                    type: 'POST',
                    url: "<?= base_url('addShow'); ?>",
                    data: {
                        s_text_area1: $('#s_text_area1').val(),
                        s_text_area2: $('#s_text_area2').val(),
                        s_text_area3: $('#s_text_area3').val()
                    },
                    success: function(resp) {
                        Swal.fire({
                            position: 'top-end',
                            icon: 'success',
                            title: 'Successfully added data',
                            showConfirmButton: false,
                            timer: 1000,
                        });
                        $('#s_text_area1').val("");
                        $('#s_text_area2').val("");
                        $('#s_text_area3').val("");
                        showcard()
                    }
                });
            }
            runEffect();
            $("#dataShow").show();
            return false;
        });

    });
    showcard()
    //Show Data List
    function showcard() {
        $.ajax({
            url: "<?php echo base_url("dataShowAjax"); ?>",
            type: "POST",
            cache: false,
            success: function(data) {
                $('#effect').html(data);




                // Updated Data List
                $('.user_status').click(function() {
                    var s_id = $(this).data('id');
                    var s_status = $(this).data('status');

                    $.ajax({
                        type: 'POST',
                        url: "<?= base_url('updateStatus'); ?>",
                        data: {
                            s_id: s_id,
                            s_status: s_status,
                        },
                        success: function(resp) {
                            showcard()

                        }
                    });
                })



                //For Delete List
                $(".data_remove").click(function() {
                    var remove_id = $(this).data('id');
                    if (remove_id) {
                        $.ajax({
                            type: 'POST',
                            url: "<?php echo base_url('deleteDataShow') ?>",
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
    // $('#submitForm').click(function() {

    // })
    </script>