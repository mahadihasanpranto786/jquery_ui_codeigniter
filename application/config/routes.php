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



$route['administrator'] = 'backend/authority/administrator/index';
$route['login'] = 'backend/login/Login';
$route['logout'] = 'backend/login/Login/user_logout';
//$route['404_override'] = 'Errors/error404';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
