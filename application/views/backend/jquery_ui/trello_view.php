<div class="content-wrapper">
    <div class="content">
        <style>
            .column {
                width: 200px;
                float: left;
                padding-bottom: 100px;
            }

            .portlet {
                margin: 0 1em 1em 0;
                padding: 0.3em;
            }

            .portlet-header {
                padding: 0.2em 0.3em;
                margin-bottom: 0.5em;
                position: relative;
            }

            .portlet-toggle {
                position: absolute;
                top: 50%;
                right: 0;
                margin-top: -8px;
            }

            .portlet-content {
                padding: 0.4em;
            }

            .portlet-placeholder {
                border: 1px dotted black;
                margin: 0 1em 1em 0;
                height: 50px;
            }
        </style>

        </head>

        <body>

            <div class="column">

                <div class="portlet">
                    <div class="portlet-header">Feeds</div>
                    <div class="portlet-content">This is my trello description, here you can sort drugable the anythings you want you can do</div>
                </div>

                <div class="portlet">
                    <div class="portlet-header">News</div>
                    <div class="portlet-content">This is my trello description, here you can sort drugable the anythings you want you can do</div>
                </div>

            </div>

            <div class="column">

                <div class="portlet">
                    <div class="portlet-header">Shopping</div>
                    <div class="portlet-content">This is my trello description, here you can sort drugable the anythings you want you can do</div>
                </div>

            </div>
            <div class="column">

                <div class="portlet">
                    <div class="portlet-header">Shopping</div>
                    <div class="portlet-content">This is my trello description, here you can sort drugable the anythings you want you can do</div>
                </div>

            </div>
            <div class="column">

                <div class="portlet">
                    <div class="portlet-header">Shopping</div>
                    <div class="portlet-content">This is my trello description, here you can sort drugable the anythings you want you can do</div>
                </div>

            </div>
            <div class="column">

                <div class="portlet">
                    <div class="portlet-header">Shopping</div>
                    <div class="portlet-content">This is my trello description, here you can sort drugable the anythings you want you can do</div>
                </div>

            </div>
            <div class="column">

                <div class="portlet">
                    <div class="portlet-header">Shopping</div>
                    <div class="portlet-content">This is my trello description, here you can sort drugable the anythings you want you can do</div>
                </div>

            </div>
            <div class="column">

                <div class="portlet">
                    <div class="portlet-header">Shopping</div>
                    <div class="portlet-content">This is my trello description, here you can sort drugable the anythings you want you can do</div>
                </div>

            </div>

            <div class="column">

                <div class="portlet">
                    <div class="portlet-header">Links</div>
                    <div class="portlet-content">This is my trello description, here you can sort drugable the anythings you want you can do</div>
                </div>

                <div class="portlet">
                    <div class="portlet-header">Images</div>
                    <div class="portlet-content">This is my trello description, here you can sort drugable the anythings you want you can do</div>
                </div>
                <div class="portlet">
                    <div class="portlet-header">Images</div>
                    <div class="portlet-content">This is my trello description, here you can sort drugable the anythings you want you can do</div>
                </div>
                <div class="portlet">
                    <div class="portlet-header">Images</div>
                    <div class="portlet-content">This is my trello description, here you can sort drugable the anythings you want you can do</div>
                </div>

            </div>
    </div>
</div>


<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>
<script>
    $(function() {
        $(".column").sortable({
            connectWith: ".column",
            handle: ".portlet-header",
            cancel: ".portlet-toggle",
            placeholder: "portlet-placeholder ui-corner-all",
            opacity: 0.5,
            cursor: 'move',
            tolerance: 'pointer',
            placeholder: 'state',
            placeholder: "ui-state-highlight",

            update: function(event, ui) {

                console.log(event);
            }
        });

        $(".portlet")
            .addClass("ui-widget ui-widget-content ui-helper-clearfix ui-corner-all")
            .find(".portlet-header")
            .addClass("ui-widget-header ui-corner-all")
            .prepend("<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>");

        $(".portlet-toggle").on("click", function() {
            var icon = $(this);
            icon.toggleClass("ui-icon-minusthick ui-icon-plusthick");
            icon.closest(".portlet").find(".portlet-content").toggle();
        });
    });
</script>