<?php
date_default_timezone_set('Asia/Manila');

//include the config.php at the top of your views
require_once 'routes.php';
require_once 'session.php';
require_once 'functions.php';
require_once 'database.php';
require_once 'validate.php';
require_once 'text.php';
//include your new query files here
require_once('../queries/dashboard.php');