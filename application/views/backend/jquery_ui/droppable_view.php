<style>
    #gallery {
        float: left;
        width: 65%;
        min-height: 12em;
    }

    .gallery.custom-state-active {
        background: #eee;
    }

    .gallery li {
        float: left;
        width: 96px;
        padding: 0.4em;
        margin: 0 0.4em 0.4em 0;
        text-align: center;
    }

    .gallery li h5 {
        margin: 0 0 0.4em;
        cursor: move;
    }

    .gallery li a {
        float: right;
    }

    .gallery li a.ui-icon-zoomin {
        float: left;
    }

    .gallery li img {
        width: 100%;
        cursor: move;
    }

    #trash {
        width: 32%;
        min-height: 18em;
        padding: 1%;
    }

    #trash h4 {
        line-height: 16px;
        margin: 0 0 0.4em;
    }

    #trash h4 .ui-icon {
        float: left;
    }

    #trash .gallery h5 {
        display: none;
    }
</style>
<div class="content-wrapper">
    <div class="content">
        <div class="ui-widget ui-helper-clearfix">
            <div class="row">
                <div class="col-md-6">
                    <ul id="gallery" class="gallery ui-helper-reset ui-helper-clearfix">
                        <?php
                        if ($getData) {
                            foreach ($getData->result() as $value) { ?>

                                <li class="ui-widget-content ui-corner-tr">
                                    <h5 class="ui-widget-header"><?= $value->sr_name ?></h5>
                                    <img src=" <?php echo base_url('assets/uploads/files/' . $value->sr_img); ?>" alt="The peaks of High Tatras" width="96" height="72">
                                    <a href="assets/uploads/files/pexels-philippe-donn-11339574.jpg" title="View larger image" class="ui-icon ui-icon-zoomin">View larger</a>
                                    <a href="link/to/trash/script/when/we/have/js/off" title="Delete this image" class="ui-icon ui-icon-trash">Delete image</a>
                                </li>
                        <?php }
                        }
                        ?>
                    </ul>
                </div>
                <div id="trash" class="ui-widget-content ui-state-default">
                    <h4 class="ui-widget-header"><span class="ui-icon ui-icon-trash">Trash</span> Trash</h4>
                </div>

            </div>
        </div>
    </div>
</div>


<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>
<script>
    $(function() {

        // There's the gallery and the trash
        var $gallery = $("#gallery"),
            $trash = $("#trash");

        // Let the gallery items be draggable
        $("li", $gallery).draggable({
            cancel: "a.ui-icon", // clicking an icon won't initiate dragging
            revert: "invalid", // when not dropped, the item will revert back to its initial position
            containment: "document",
            helper: "clone",
            cursor: "move",

            update: function(event, ui) {


            },

        });

        // Let the trash be droppable, accepting the gallery items
        $trash.droppable({
            accept: "#gallery > li",
            classes: {
                "ui-droppable-active": "ui-state-highlight"
            },

            drop: function(event, ui) {

                deleteImage(ui.draggable);
            }
        });

        // Let the gallery be droppable as well, accepting items from the trash
        $gallery.droppable({
            accept: "#trash li",
            classes: {
                "ui-droppable-active": "custom-state-active"
            },
            drop: function(event, ui) {
                recycleImage(ui.draggable);
            }
        });

        // Image deletion function
        var recycle_icon =
            "<a href='link/to/recycle/script/when/we/have/js/off' title='Recycle this image' class='ui-icon ui-icon-refresh'>Recycle image</a>";

        function deleteImage($item) {
            $item.fadeOut(function() {
                var $list = $("ul", $trash).length ?
                    $("ul", $trash) :
                    $("<ul class='gallery ui-helper-reset'/>").appendTo($trash);

                $item.find("a.ui-icon-trash").remove();
                $item.append(recycle_icon).appendTo($list).fadeIn(function() {
                    $item
                        .animate({
                            width: "48px"
                        })
                        .find("img")
                        .animate({
                            height: "36px"
                        });
                });
            });
        }

        // Image recycle function
        var trash_icon =
            "<a href='link/to/trash/script/when/we/have/js/off' title='Delete this image' class='ui-icon ui-icon-trash'>Delete image</a>";

        function recycleImage($item) {
            $item.fadeOut(function() {
                $item
                    .find("a.ui-icon-refresh")
                    .remove()
                    .end()
                    .css("width", "96px")
                    .append(trash_icon)
                    .find("img")
                    .css("height", "72px")
                    .end()
                    .appendTo($gallery)
                    .fadeIn();
            });
        }

        // Image preview function, demonstrating the ui.dialog used as a modal window
        function viewLargerImage($link) {
            var src = $link.attr("href"),
                title = $link.siblings("img").attr("alt"),
                $modal = $("img[src$='" + src + "']");
            if ($modal.length) {
                $modal.dialog("open");
            } else {
                var img = $("<img alt='" + title +
                        "' width='384' height='288' style='display: none; padding: 8px;' />")
                    .attr("src", src).appendTo("body");
                setTimeout(function() {
                    img.dialog({
                        title: title,
                        width: 400,
                        modal: true
                    });
                }, 1);
            }
        }

        // Resolve the icons behavior with event delegation
        $("ul.gallery > li").on("click", function(event) {
            var $item = $(this),
                $target = $(event.target);

            if ($target.is("a.ui-icon-trash")) {
                deleteImage($item);
            } else if ($target.is("a.ui-icon-zoomin")) {
                viewLargerImage($target);
            } else if ($target.is("a.ui-icon-refresh")) {
                recycleImage($item);
            }

            return false;
        });
    });
</script>