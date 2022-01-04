<div class="content-wrapper">
    <div class="content p-4">
        <div class="row">
            <div class="col-md-4">
                <!-- <p>
                    <label for="spinner">Select a value:</label>
                    <input id="spinner" name="value">
                </p>
                <p>
                    <button class="ui-button ui-widget ui-corner-all" id="disable">Toggle disable/enable</button>
                    <button class="ui-button ui-widget ui-corner-all" id="destroy">Toggle widget</button>
                </p>
                <p>
                    <button class="ui-button ui-widget ui-corner-all" id="getvalue">Get value</button>
                    <button class="ui-button ui-widget ui-corner-all" id="setvalue">Set value to 5</button>
                </p> -->
            </div>
            <div class="col-md-4">
                <p>
                    <label for="spinner">Amount to donate:</label>
                    <input id="spinner" name="spinner" value="5">
                </p>
                <p>
                    <label for="currency">Currency to donate</label>
                    <select id="currency" name="currency">
                        <option value="en-US">US $</option>
                        <option value="de-DE">EUR &#x20AC;</option>
                        <option value="ja-JP">YEN &#xA5;</option>
                    </select>
                </p>
            </div>
            <div class="col-md-4">

            </div>
            <div class="col-md-4">

            </div>
        </div>


    </div>
</div>
<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>
<script>
    // $(function() {
    //     var spinner = $("#spinner").spinner();

    //     $("#disable").on("click", function() {
    //         if (spinner.spinner("option", "disabled")) {
    //             spinner.spinner("enable");
    //         } else {
    //             spinner.spinner("disable");
    //         }
    //     });
    //     $("#destroy").on("click", function() {
    //         if (spinner.spinner("instance")) {
    //             spinner.spinner("destroy");
    //         } else {
    //             spinner.spinner();
    //         }
    //     });
    //     $("#getvalue").on("click", function() {
    //         alert(spinner.spinner("value"));
    //     });
    //     $("#setvalue").on("click", function() {
    //         spinner.spinner("value", 5);
    //     });

    //     $("button").button();
    // });
    $(function() {
        $("#currency").on("change", function() {

            $("#spinner").spinner("option", "culture", $(this).val());

        });
        $("#spinner").spinner({
            min: 5,
            max: 2500,
            step: 25,
            start: 1000,
            numberFormat: "C"
        });
    });
</script>