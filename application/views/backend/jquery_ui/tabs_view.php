<div class="content-wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-6 mt-2" id="dataListShow">


            </div>
            <div class="col-md-6 mt-2">
                <div class="card">
                    <div class="card-header bg-info">
                        <h4 class=" ">Tabs Add Dynamically</h4>
                    </div>
                    <form class="p-3" method="POST" autocomplete="off">
                        <div class="form-group">
                            <label for="formGroupExampleInput">Tabs Title</label>
                            <input type="text" name="t_title" id="t_title" class="form-control" placeholder="Title input">
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput">Dialog Descriptions</label>
                            <textarea name="description" id="t_description" class="textarea"></textarea>
                        </div>
                        <input type="hidden" name="t_id" id="t_id">
                        <button type="button" id="submitForm" class="ui-button ui-widget-content ui-corner-all">Submit</button>
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
        $("#submitForm").click(function() {
            if ($("#t_title").val() != "" && $("#t_description").val() != "") {
                $.ajax({
                    type: "POST",
                    url: "<?php echo base_url("addTabs") ?>",
                    data: {
                        t_title: $("#t_title").val(),
                        t_description: $("#t_description").val(),
                    },
                    success: function(resp) {
                        $("#dataList").html(resp)
                        showData()
                    }
                })
            }
        })

        function showData() {
            $.ajax({
                url: "<?= base_url("showTabs") ?>",
                success: function(data) {
                    $("#dataListShow").html(data)
                    $(function() {
                        var tabs = $(".tabs").tabs();
                        var previouslyFocused = false;

                        tabs.find(".ui-tabs-nav").sortable({
                            axis: "x",

                            update: function(event, ui) {

                                var iddd = $("#getId").attr("data-id")

                                arrayData = []
                                $(".ui-tabs-nav li").each(function(index) {
                                    arrayData.push({
                                        id: $(this).attr("data-id"),
                                        position: index + 1
                                    })
                                })
                                console.log(ui)
                                $.ajax({
                                    type: "POST",
                                    url: "<?php echo base_url("updateTabs") ?>",
                                    data: {
                                        arrayData
                                    },
                                    success: function(resp) {
                                        //showData()
                                    }
                                })

                            },

                            // Sortable removes focus, so we need to restore it if the tab was focused
                            // prior to sorting
                            start: function(event, ui) {
                                previouslyFocused = document.activeElement === ui.item[0];
                            },
                            stop: function(event, ui) {
                                tabs.tabs("refresh");
                                if (previouslyFocused) {
                                    ui.item.trigger("focus");
                                }
                            }
                        });
                    });
                }
            })
        }




    })
</script>