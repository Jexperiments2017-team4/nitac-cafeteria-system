<?php
class RoutingController extends BaseController {
  private $class;
  private $controller;

  public function __construct() {
    parent::__construct();
  }

  public function run() {
    if(isset($_REQUEST['class'])){
      $this->class = $_REQUEST['class'];
    }
    switch($this->class){
      case "review":
        $controller = new ReviewController();
        break;
      default:
        $controller = new ProductController();
    }
    $controller->run();
  }
}
?>