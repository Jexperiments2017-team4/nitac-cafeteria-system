<html>
    <head>
        <title>Test</title>
    </head>
    <body>
        <p><?php echo 'Hello World.' ?></p>
    </body>
</html>

<?php
    define('_ROOT_DIR', __DIR__.'/');
    require_once(_ROOT_DIR.'apps/init.php');
    $controller = new ProductController();
    $controller->index();

    exit;
?>