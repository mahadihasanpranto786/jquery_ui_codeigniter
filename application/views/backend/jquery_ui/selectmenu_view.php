<style>
    fieldset {
        border: 0;
    }

    label {
        display: block;
        margin: 30px 0 0 0;
    }

    .overflow {
        height: 200px;
    }
</style>

<div class="content-wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-8">
                <div class="card mt-2">
                    <div class="card-header bg-info ">
                        <h6>Selecemenu Dependable Dropdown List</h6>
                    </div>

                    <table class="table table-striped mb-0">
                        <thead>
                            <tr>
                                <th>SL.</th>
                                <th>Menu Title</th>
                                <th>Sub Menu Title</th>
                                <th>Sub Sub Menu Title</th>
                            </tr>
                        </thead>
                        <tbody class="" id="dataList">

                        </tbody>
                    </table>

                </div>
            </div>
            <div class="col-md-4">

                <div class="card mt-2">
                    <div class="card-header bg-info ">
                        <h6>Selecemenu Dependable Dropdown</h6>
                    </div>

                    <table class="table table-striped mb-0">
                        <thead>
                        </thead>
                        <tbody class="demo">
                            <tr>
                                <td class="bg-teal">
                                    <select name="menu_id" id="menu">
                                        <option>-- Select menu --</option>
                                        <?php
                                        if ($menuList) {
                                            foreach ($menuList->result() as  $value) { ?>

                                                <option id="thisName" data-name="<?= $value->m_title ?>" value="<?= $value->m_id ?>"><?= $value->m_title ?></option>
                                        <?php   }
                                        }
                                        ?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="bg-teal">
                                    <select name="sub_menu_id" class="subMenu2" id="subMenu">
                                        <option>-- Select Submenu --</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="bg-teal">
                                    <select name="sub_menu_id" class="subSubMenu3" id="subSubMenu">
                                        <option>-- Select subSubmenu --</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="hidden" name="s_menu_id" id="s_menu_id">
                                    <button type="button" class="ui-button float-right ui-widget ui-corner-all" id="submitForm">Submit</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                </div>

            </div>
        </div>


    </div>
</div>

<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        showData()
        $(function() {
            $("#menu").selectmenu({
                change: function(event, ui) {
                    $("#subMenu").empty();
                    $("#subSubMenu").empty();
                    $.ajax({
                        type: "POST",
                        url: "<?php echo base_url("getMenuDependable") ?>",
                        dataType: "JSON",
                        data: {
                            menu_id: ui.item.value
                        },
                        success: function(resp) {
                            $('#subMenu').append("<option value=''>- Select Sub-</option>");
                            $.each(resp, function(index, value) {
                                $('#subMenu').append('<option id="thisSubName" data-name="' + value.sm_title + '" value="' + value.sm_id + '">' + value.sm_title + '</option>');
                            });
                            $(".subMenu2").selectmenu("refresh");
                            $(".subSubMenu3").selectmenu("refresh");
                        }
                    })
                },
                width: 300
            });

            $("#subMenu").selectmenu({
                change: function(event, ui) {
                    $("#subSubMenu").empty();
                    var subMenuData = ui.item.value
                    $.ajax({
                        type: "POST",
                        url: "<?php echo base_url("getSubMenuDependable") ?>",
                        dataType: "JSON",
                        data: {
                            sub_menu_id: subMenuData
                        },
                        success: function(resp) {

                            $('#subSubMenu').append("<option value=''>- Select Sub Sub-</option>");
                            $.each(resp, function(index, value) {
                                $('#subSubMenu').append('<option id="thisSubSubName" data-name="' + value.ssm_title + '" value="' + value.ssm_id + '">' + value.ssm_title + '</option>');
                            });

                            $(".subSubMenu3").selectmenu("refresh");
                        }
                    })
                },
                width: 300
            });
            $(".subSubMenu3").selectmenu({
                width: 300
            })
        });
        $("#submitForm").click(function() {
            var menuId = $("option[id='thisName']:selected").data("name")
            var submenuId = $("option[id='thisSubName']:selected").data("name")
            var subSubMenuID = $("option[id='thisSubSubName']:selected").data("name")
            if (menuId != "") {
                $.ajax({
                    type: "POST",
                    url: "<?php echo base_url("addSelectMenu") ?>",
                    data: {
                        menu_id: menuId,
                        sub_menu_id: submenuId,
                        sub_sub_menu_id: subSubMenuID,
                    },
                    success: function(resp) {
                        showData()
                    }

                })
            }
        })

        function showData() {
            $.ajax({
                url: "<?php echo base_url("showSelectMenuList") ?>",
                success: function(data) {
                    $("#dataList").html(data)

                    $(".remove").click(function() {
                        var iddRemove = $(this).data("id")
                        console.log(iddRemove)
                        $.ajax({
                            type: "POST",
                            url: "<?php echo base_url("deleteMenu") ?>",
                            data: 's_menu_id=' + iddRemove,
                            success: function(resp) {
                                showData()
                            }
                        })

                    })
                }
            })
        }


    })
</script>