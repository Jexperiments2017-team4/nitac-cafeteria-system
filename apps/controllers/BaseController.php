<?php
class BaseController {
  protected $type;
  protected $next_type;
  protected $action;
  protected $next_action;
  protected $view;
  protected $file;

  public function __construct() {
    $this->view_initialize();
  }

  private function view_initialize() {
    $this->view = new Smarty;

    $this->view->template_dir = _TEMPLATES_DIR;
    $this->view->compile_dir = _TEMPLATES_C_DIR;

    if(isset($_REQUEST['type'])){
      $this->type   = $_REQUEST['type'];
    }
    if(isset($_REQUEST['action'])){
      $this->action = $_REQUEST['action'];
    }
  
    $this->view->assign('SCRIPT_NAME', _SCRIPT_NAME);
  }

  public function view_display() {
    $this->view->assign('type',    $this->next_type);
    $this->view->assign('action',  $this->next_action);
    $this->view->display($this->file);
  }
}
?>