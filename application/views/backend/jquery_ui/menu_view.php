<style>
    .ui-menu {
        width: 200px;
    }

    .ui-state-active,
    .ui-widget-content .ui-state-active,
    .ui-widget-header .ui-state-active,
    a.ui-button:active,
    .ui-button:active,
    .ui-button.ui-state-active:hover {
        border: 1px solid #003eff;
        background: #007fff;
        font-weight: 700 !important;
        color: #ffffff;
    }
</style>
<div class="content-wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-6 mt-2">

                <!-- <div class="card-header bg-info">
                    <table class="table table-borderless">

                        <tbody>
                            <tr>
                                <td style="display: block; width: 100%">
                                    <select class="custom-select select2" name="m_id" id="main_menu">
                                        <option value="" disabled selected>Choose medicine group name</option>
                                        <?php if ($menu) {
                                            foreach ($menu->result() as $row) { ?>
                                                <option value="<?= $row->m_id ?>"> <?= $row->m_title ?> </option>
                                        <?php }
                                        } ?>
                                    </select>
                                </td>
                                <td style="display: block; width: 100%">
                                    <select class="form-control select2" name="sub_menu" id="sub_menu" value="" tabindex="-1" aria-hidden="true">

                                    </select>
                                </td>
                                <td style="display: block; width: 100%; border-bottom: 1px solid #e3e3e3;">
                                    <select class="form-control select2" id="sub_sub_menu" name="sub_sub_menu">

                                    </select>
                                </td>

                                <td style="display: block; width: 100%">
                                    <select class="form-control select2" name="pr_time" id="medicine_time" value="" tabindex="-1" aria-hidden="true">
                                        <option value="">Choose Rules</option>

                                        <?php if ($mRules) {
                                            foreach ($mRules->result() as $rules) { ?>
                                                <option value="<?= $rules->mr_title ?>"><?= $rules->mr_title ?> </option>
                                        <?php }
                                        } ?>
                                    </select>
                                </td>
                                <td style="display: block; width: 100%; border-bottom: 1px solid #e3e3e3;">
                                    <select class="form-control select2" id="pr_rules" name="pr_rules">
                                        <option value="">Select Comments</option>
                                        <?php if ($mRules) {
                                            foreach ($mInstruction->result() as $instruction) { ?>
                                                <option value="<?= $instruction->mi_title ?>"><?= $instruction->mi_title ?> </option>
                                        <?php }
                                        } ?>

                                    </select>
                                </td>


                            </tr>
                        </tbody>
                    </table>
                    <button type="button" class="btn btn-default btn-sm pull-right add_medicine_bucket"><i class="fa fa-plus"></i>&nbsp;Add Into Prescription</button>
                </div>

                <div id="bucket_view" class="my-3">
                </div> -->
                <div id="data_show">

                </div>

            </div>
            <div class="col-md-6 mt-2">
                <div class="card  card-info ">
                    <div class="card-header">
                        Add Menu
                    </div>
                    <div class="card-body">
                        <form role="form" method="POST">
                            <div class="tab-content" id="main_form">
                                <div class="row">
                                    <div class="form-group col-sm-6">
                                        <label for="exampleDropdownFormEmail1">Menu Title</label>
                                        <input type="text" name="m_title" class="form-control" id="menu_m_title" placeholder="Enter Menu Title">
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <input type="hidden" name="m_id" id="menu_m_id">
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="ui-button ui-widget ui-corner-all" id="submitMenuForm">Submit</button>
                        </form>
                    </div>
                </div>
                <div class="card card-info ">
                    <div class="card-header">
                        Add Sub Menu
                    </div>
                    <div class="card-body">
                        <form role="form" method="POST">
                            <div class="tab-content" id="main_form">
                                <div class="row">
                                    <div class="form-group col-sm-6">
                                        <label for="exampleDropdownFormEmail1">Menu List</label>
                                        <select class="custom-select  sub-select sub-select_m_id" name="m_id" id="m_id">
                                            <?php
                                            if ($menu)
                                                foreach ($menu->result() as $row) { ?>
                                                <option value="<?= $row->m_id ?>"><?= $row->m_title ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <label for="exampleDropdownFormEmail1">Sub Menu Title</label>
                                        <input type="text" name="sm_title" class="form-control" id="sm_title" placeholder="Enter Sub Menu Title">
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <input type="hidden" name="sm_id" id="sm_id">
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="ui-button float-right ui-widget ui-corner-all" id="submitSubForm">Submit</button>
                        </form>
                    </div>
                </div>
                <div class="card card-info ">
                    <div class="card-header">
                        Add Sub Sub Menu
                    </div>
                    <div class="card-body">
                        <form role="form" method="POST">
                            <div class="tab-content" id="main_form">
                                <div class="row">
                                    <div class="form-group col-sm-6">
                                        <label for="exampleDropdownFormEmail1">Sub Menu List</label>
                                        <select class="custom-select sub-sub sub-sub-sub" name="sm_id" id="sm_id">
                                            <?php
                                            if ($subMenu)
                                                foreach ($subMenu->result() as $row) { ?>
                                                <option id="dataId" data-id="<?= $row->m_id ?>" value="<?= $row->sm_id ?>">
                                                    <?= $row->sm_title ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <label for="exampleDropdownFormEmail1">Sub Sub Menu Title</label>
                                        <input type="text" name="ssm_title" class="form-control" id="ssm_title" placeholder="Enter Sub Sub Menu Title">
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <input type="hidden" name="ssm_id" id="ssm_id">
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="ui-button float-right ui-widget ui-corner-all" id="submitSubSubForm">Submit</button>
                        </form>
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


        /* $("#main_menu").change(function() {
            $("#sub_menu").empty();
            $("#sub_sub_menu").empty();
            var sub_menu = $(this).val();
            alert(sub_menu);

            $.ajax({
                type: "POST",
                url: "<?= base_url('dependable_dropdown_menu'); ?>",
                data: {
                    sub_menu: sub_menu
                },
                success: function(data) {
                    console.log(data)
                    var subMenuData = JSON.parse(data);
                    $("#sub_menu").append(`<option value="" disabled selected>Choose medicine name</option>`);
                    $(subMenuData).each(function(key, value) {
                        $("#sub_menu").append(`<option value="${value.m_id}">${value.m_title}</option>`);
                    });

                }
            })
        }) */

        function showData() {
            $.ajax({
                url: "<?= base_url("menuDataView") ?>",
                success: function(data) {
                    $("#data_show").html(data)
                    $(function() {
                        $(".menu").menu({
                            icons: {
                                submenu: "ui-icon-circle-triangle-e"
                            }
                        });



                    });
                }
            })
        }

        function showSelectData() {
            $.ajax({
                url: "<?= base_url("selectData") ?>",
                success: function(data) {
                    $(".sub-sub").html(data)

                }
            })
        }

        function showSelectSubData() {
            $.ajax({
                url: "<?= base_url("selectSubData") ?>",
                success: function(data) {
                    $(".custom-select").html(data)

                }
            })
        }
        $("#submitMenuForm").click(function() {
            if ($('#menu_m_title').val() != "") {
                $.ajax({
                    type: "POST",
                    url: "<?= base_url("addMenu") ?>",
                    data: {
                        m_title: $("#menu_m_title").val()
                    },
                    success: function(data) {
                        $("#menu_m_title").val("")
                        showSelectSubData()
                        showData()
                    }
                })
            }
        })
        $("#submitSubForm").click(function() {
            if ($('#m_id').children("option:selected").val() != "" && $("#sm_title").val() != "") {
                $.ajax({
                    type: "POST",
                    url: "<?= base_url("addSubMenu") ?>",
                    data: {
                        m_id: $('#m_id').children("option:selected").val(),
                        sm_title: $("#sm_title").val()
                    },
                    success: function(data) {
                        // $('.sub-select_m_id').children("option:selected").val(""),
                        $("#sm_title").val("")
                        showSelectData()
                        showData()

                    }
                })
            }
        })
        $("#submitSubSubForm").click(function() {

            if ($('.sub-sub-sub').children("option:selected").val() != "" && $("#ssm_title").val() != "") {
                $.ajax({
                    type: "POST",
                    url: "<?= base_url("addSubSubMenu") ?>",
                    data: {
                        // m_id: $('.sub-select_m_id').children("option:selected").val(),
                        sm_id: $('.sub-sub-sub').children("option:selected").val(),
                        ssm_title: $("#ssm_title").val()
                    },
                    success: function(data) {
                        $("#ssm_title").val("")
                        showData()

                    }
                })
            }
        })


    })
</script>