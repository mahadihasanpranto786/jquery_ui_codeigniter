<style>
    /* body {
        background-color: black;
    }

    .content-wrapper {
        background-color: #889cba;
    }

    .main-header,
    .main-sidebar,
    .main-footer {
        display: none;
    } */
</style>
<div class="content-wrapper">
    <div class="content">

        <div class="row">
            <div class="col-md-4">
                <?= form_open_multipart(base_url('Test/inserToCart')); ?>

                <?= form_hidden([
                    'name'          => 'id',
                ]); ?>

                <?= form_label("Name:", "name", ['class' => 'form-label mt-3 ml-3',]); ?>


                <?= form_input([
                    'name'          => 'username',
                    'placeholder'         => 'Type UserName...',
                    'class'     => 'form-control mx-3',
                    'id'     => 'name'
                ]); ?>

                <?= form_label("Details:", "details", ['class' => 'form-label mt-3 ml-3',]); ?>
                <?= form_textarea(array("name" => "details", "cols" => 12, "rows" => 3,), "", array(
                    "class" => "form-control mx-3",
                    'id'     => 'details'
                )); ?>

                <?= form_dropdown('category', array("Faul Number 1" => "Faul Number 1", "Faul Number 2" => "Faul Number 2", "Faul Number 3" => "Faul Number 3"), array(), array("class" => "form-control m-3")); ?>

                <!-- <?= form_upload([
                            'name'          => 'username',
                            'class'     => 'form-control m-3'
                        ]); ?> -->

                <?= form_submit([
                    'type'          => 'submit',
                    'value'          => 'submit',
                    'class'     => 'btn btn-success ml-3'
                ]); ?>

                <?= form_reset([
                    'name'          => 'reset',
                    'value'          => 'Reset',
                    'class'     => 'btn btn-danger ml-3'
                ]); ?>

                <?= form_close(); ?>
            </div>
            <div class="col-md-6 m-5">
                <table class="table table-hover border">
                    <thead class="bg-dark">
                        <tr>
                            <th scope="col">SL.</th>
                            <th scope="col">Name</th>
                            <th scope="col">Details</th>
                            <th scope="col">Categorys</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $serial = 1;

                        // x_debug($showCartData);
                        if ($showCartData) {
                            foreach ($showCartData as $row) { ?>
                                <tr>
                                    <th><?= $serial++ ?></th>
                                    <td><?= $row['name'] ?></td>
                                    <td><?= $row['details'] ?></td>
                                    <td><?= $row['category'] ?></td>
                                    <td><a href="<?= base_url('Test/cartRowRemove') ?>?rowid=<?= $row['rowid'] ?>" class="btn btn-sm btn-danger">Remove</a></td>
                                </tr>
                        <?php }
                        }; ?>
                    </tbody>
                </table>

                <!-- <?= $this->pagination->create_links(); ?> -->
            </div>

            <div class="col-md-1 mt-5">
                <a href="<?= base_url('Test/cartDestroy') ?>" class="btn btn-sm btn-danger">Remove All Row</a>
            </div>
        </div>


        <div class="row">
            <!-- get data by api  -->
            <div class="col-md-6 mt-5">
                <!-- <table class="table table-hover border" id="">
                    <thead class="bg-dark">
                        <tr>
                            <th scope="col">SL.</th>
                            <th scope="col">Title</th>
                            <th scope="col">Body</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        // $serial = 1;


                        // if ($jsonData) {
                        //     foreach ($jsonData as $row) { 
                        ?>
                                <tr>
                                    <th><?= $serial++ ?></th>
                                    <td><?= $row->title; ?></td>
                                    <td><?= $row->body; ?></td>
                           
                                    <td><a href="" class="btn btn-sm btn-danger">Remove</a></td>
                                </tr>
                        <?php //}  }; 
                        ?>
                    </tbody>
                </table> -->
            </div>
            <button id="onClickLoadAjax" class="btn btn-dark btn-sm">Click TO Load Data</button><br>
            <div class="col-md-6 mt-5">

                <!-- <form action="<?= base_url("Test/searchInfo"); ?>" class="row my-3" method="get"> -->
                <input type="text" class="form-control w-50" name="searchItemName" id="search_item">
                <button type="submit" class="btn btn-sm btn-info w-25" id="button">Search</button>
                <!-- </form> -->
                <!-- <table class="table table-hover border" id="example1">
                    <thead class="bg-dark">
                        <tr>
                            <th scope="col">SL.</th>
                            <th scope="col">Name</th>
                            <th scope="col">Age</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        // $serial = 1;


                        // if ($patientData) {
                        //     foreach ($patientData->result() as $row) { 
                        ?>
                                <tr>
                                    <th><?= $serial++ ?></th>
                                    <td><?= $row->p_name; ?></td>
                                    <td><?= $row->p_age; ?></td>
                                  
                                    <td><a href="" class="btn btn-sm btn-danger">Remove</a></td>
                                </tr>
                        <?php //}  }; 
                        ?>
                    </tbody>
                </table> -->
            </div>

            <table class="table table-striped col-sm-8 pull-right" id="mydata">
                <thead>
                    <tr>
                        <th>Education Lavel ID</th>
                        <th>Educaion Level Title</th>
                        <th style="text-align: right;">Actions</th>
                    </tr>
                </thead>
                <tbody id="show_data">

                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>
<script>
    $(document).ready(function() {

        $("#onClickLoadAjax").click(function() {
            showcard();
        });


        function showcard() {
            var dami = 'Nothing';

            $.ajax({
                type: 'GET',
                url: '<?php echo base_url('Test/ajaxDatashow'); ?>',
                dataType: 'JSON',
                success: function(data) {
                    var html = '';
                    var i;
                    for (i = 0; i < data.length; i++) {
                        html += '<tr>' +
                            '<td>' + data[i].el_id + '</td>' +
                            '<td>' + data[i].el_title + '</td>' +
                            // '<td>' + data[i].product_price + '</td>' +
                            // '<td style="text-align:right;">' +
                            // '<a href="javascript:void(0);" class="btn btn-info btn-sm item_edit" data-product_code="' + data[i].product_code + '" data-product_name="' + data[i].product_name + '" data-price="' + data[i].product_price + '">Edit</a>' + ' ' +
                            // '<a href="javascript:void(0);" class="btn btn-danger btn-sm item_delete" data-product_code="' + data[i].product_code + '">Delete</a>' +
                            // '</td>' +
                            '</tr>';
                    }
                    // alert(html)
                    $('#show_data').html(html);
                   
                    // var dami = 'Nothing';
                    // $(".card_remove").click(function() {
                    //     var card_remove_id = this.id;
                    //     if (card_remove_id) {
                    //         $.ajax({
                    //             type: 'POST',
                    //             url: "<?php //echo base_url('Ajax_play/ajaxCardRemove') 
                                            ?>",
                    //             data: 'card_remove_id=' + card_remove_id,
                    //             success: function(html) {

                    //                 showcard();

                    //             }

                    //         });
                    //     }

                    // });
                },

                error: function(error) {
                    // error alert message
                    alert('error :: ' + eval(error));
                    // console.log(JSON.stringify(error));
                }
            });


        }


        // $("#button").click(function() {
        //     var search_item = $("#search_item").val();
        //     // alert(search_item);
        //     // 
        //     $.ajax({
        //         type: 'GET',
        //         url: '<?php // echo base_url(); 
                            ?>Test/searchInfo',
        //         data: {
        //             searchItemName: search_item,


        //         },

        //         success: function(resp) {
        //             showcard();

        //             // alert("hi");


        //         }
        //     });
        // });

    });
</script>