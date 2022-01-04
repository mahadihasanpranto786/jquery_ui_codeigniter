<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="administrator" class="brand-link">

        <span class="brand-text font-weight-light">Administrator</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="<?php echo base_url('') ?>assets/backend/dist/img/user.jpg" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="administrator" class="d-block">Administrator</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
					 with font-awesome or any other icon font library -->
                <li class="nav-item has-treeview menu-open">
                    <a href="<?= base_url('administrator') ?>" class="nav-link <?= active_nav('dashboard', $main_nav); ?>">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                            <!-- <i class="right fas fa-angle-left"></i> -->
                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview <?= active_open('sortable', $main_nav); ?>">
                    <a href="#" class="nav-link <?= active_nav('sortable', $main_nav); ?>">
                        <i class="far fa-calendar-plus nav-icon"></i>
                        <p>
                            Jquery Ui
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo base_url('viewSortable') ?>" class="nav-link <?= active_nav('sortable', $sub_nav); ?>">
                                <i class="fas fa-user-plus"></i>
                                <p>Create Sortable</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('progressbarView') ?>" class="nav-link <?= active_nav('progressbar', $sub_nav); ?>">
                                <i class="fas fa-user-plus"></i>
                                <p>Create Progressbar</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('datepickerShow') ?>" class="nav-link <?= active_nav('datepicker', $sub_nav); ?>">
                                <i class="fas fa-user-plus"></i>
                                <p>Datepicker Add</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('show') ?>" class="nav-link <?= active_nav('show', $sub_nav); ?>">
                                <i class="fas fa-user-plus"></i>
                                <p>Show & Hide</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('autocompleteShow') ?>" class="nav-link <?= active_nav('autocompleteShow', $sub_nav); ?>">
                                <i class="fas fa-user-plus"></i>
                                <p>Autocomplete</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('showDragdrop') ?>" class="nav-link <?= active_nav('dragdrop', $sub_nav); ?>">
                                <i class="fas fa-user-plus"></i>
                                <p>Drug And Drop</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('showResizable') ?>" class="nav-link <?= active_nav('showResizable', $sub_nav); ?>">
                                <i class="fas fa-user-plus"></i>
                                <p>Resizable</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('accordionShow') ?>" class="nav-link <?= active_nav('accordionShow', $sub_nav); ?>">
                                <i class="fas fa-user-plus"></i>
                                <p>Accordion</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('dialogShow') ?>" class="nav-link <?= active_nav('dialogShow', $sub_nav); ?>">
                                <i class="fas fa-user-plus"></i>
                                <p>Dialog</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('menuShow') ?>" class="nav-link <?= active_nav('menuShow', $sub_nav); ?>">
                                <i class="fas fa-user-plus"></i>
                                <p>Menu</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('showSelectMenu') ?>" class="nav-link <?= active_nav('showSelectMenu', $sub_nav); ?>">
                                <i class="fas fa-user-plus"></i>
                                <p>Selectmenu</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('viewSlider') ?>" class="nav-link <?= active_nav('viewSlider', $sub_nav); ?>">
                                <i class="fas fa-user-plus"></i>
                                <p>Slider</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>