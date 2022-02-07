<style>
.ui-autocomplete {
    max-height: 100px;
    overflow-y: auto;
    /* prevent horizontal scrollbar */
    overflow-x: hidden;
}

* html .ui-autocomplete {
    height: 100px;
}
</style>
<div class="content-wrapper p-4">
    <div class="content">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header bg-info">
                        <h6 class=" ">Autocomplete List</h6>
                    </div>

                    <div class="form-group p-4">
                        <label for="exampleFormControlTextarea1">Searching here</label>
                        <input class="form-control" name="text" id="autocompleted" rows="3"></input>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>

<script>
$(function() {
    var availableTags = [
        <?php foreach ($datepickerList->result() as $row) {
                echo '"' . $row->a_name . '",';
            } ?>
    ];
    $("#autocompleted").autocomplete({
        source: availableTags
    });
});
</script>