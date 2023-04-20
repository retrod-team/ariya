<?php

define('SITE_NAME', 'The New Narrion');
define('BOOK_GENERATE', 'marrion-');
define('QP_GENERATE', 'qpmarrion-');

define('COMM_PRICE', '5');  // BE
define('QPCOMM_PRICE', '5');  // QP

define('RETROD_GST', '21AALCR2582C1ZN');
define('RETROD_PAN', 'AALCR2582C');
define('RETROD_TAN', 'BBNR03307D');

define('RETROD_BOOKING_EMAIL', 'be.booking@retrodtech.com');

define('SERVER_PATH', $_SERVER['DOCUMENT_ROOT'].'/marrion');
define('SERVER_BOOKING_PATH', SERVER_PATH.'/be');
define('SERVER_SCREEN_PATH', SERVER_PATH.'/screen/');
define('SERVER_ADMIN_SCREEN_PATH', SERVER_BOOKING_PATH.'/admin/screen/');
define('SERVER_INCLUDE_PATH', SERVER_BOOKING_PATH.'/admin/include/');
define('SERVER_ADMIN_IMG', SERVER_BOOKING_PATH.'/admin/img/');
define('SERVER_ADMIN_LOGO', SERVER_BOOKING_PATH.'/admin/img/admin/');
define('SERVER_ROOM_IMG', SERVER_BOOKING_PATH.'/admin/img/room/');
define('SERVER_HERO_IMG', SERVER_BOOKING_PATH.'/admin/img/hero/');

define('FRONT_SITE','http://localhost/marrion');
define('FRONT_BOOKING_SITE', FRONT_SITE.'/be');
define('FRONT_ADMIN_SITE', FRONT_BOOKING_SITE.'/admin/');
define('FRONT_SITE_ADMIN_LOGO', FRONT_BOOKING_SITE.'/admin/img/admin/');
define('FRONT_SITE_ROOM_IMG', FRONT_BOOKING_SITE.'/admin/img/room/');
define('FRONT_SITE_HERO_IMG', FRONT_BOOKING_SITE.'/admin/img/hero/');
define('FRONT_SITE_IMG', FRONT_BOOKING_SITE.'/admin/img/');


?>