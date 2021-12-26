<?php
defined('BASEPATH') or exit('No direct script access allowed');


$route['default_controller'] = 'welcome';

$route['ajaxViewSortable'] = 'backend/jquery_ui/Sortable/ajaxViewSortable';
$route['viewSortable'] = 'backend/jquery_ui/Sortable/viewSortable';
$route['addSortable'] = 'backend/jquery_ui/Sortable/addSortable';
$route['updateData'] = 'backend/jquery_ui/Sortable/updateData';
$route['delete'] = 'backend/jquery_ui/Sortable/delete';
$route['updateAllData'] = 'backend/jquery_ui/Sortable/updateAllData';

$route['progressbarView'] = 'backend/jquery_ui/Progressbar/progressbarView';
$route['upload_data'] = 'backend/jquery_ui/Progressbar/upload_data';


$route['datepickerShow'] = 'backend/jquery_ui/Datepicker/datepickerShow';
$route['datepickerAdd'] = 'backend/jquery_ui/Datepicker/datepickerAdd';
$route['datepickerShowAjax'] = 'backend/jquery_ui/Datepicker/datepickerShowAjax';
$route['deleteData'] = 'backend/jquery_ui/Datepicker/deleteData';

$route['show'] = 'backend/jquery_ui/Show/show';
$route['addShow'] = 'backend/jquery_ui/Show/addShow';
$route['dataShowAjax'] = 'backend/jquery_ui/Show/dataShowAjax';
$route['deleteDataShow'] = 'backend/jquery_ui/Show/deleteDataShow';
$route['updateStatus'] = 'backend/jquery_ui/Show/updateStatus';



$route['administrator'] = 'backend/authority/administrator/index';
$route['login'] = 'backend/login/Login';
$route['logout'] = 'backend/login/Login/user_logout';
//$route['404_override'] = 'Errors/error404';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
