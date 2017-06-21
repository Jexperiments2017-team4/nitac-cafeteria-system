<?php
    ini_set("display_errors", On);
    error_reporting(E_ALL);
?>

<?php
    define('_ROOT_DIR', __DIR__.'/');
    require_once(_ROOT_DIR.'apps/init.php');
    $controller = new RoutingController();
    $controller->run();

    exit;
?>
