<?php
class ProductController extends BaseController {
  public function __construct() {
    parent::__construct();
  }

  public function run() {
    switch($this->type){
      case "show":
        $this->show();
        break;
      default:
        $this->index();
    }
  }

  public function index() {
    $this->view->assign('title', 'これは商品のページ');
    $this->view->assign('name', '商品一覧ページ');
    $this->file = 'product_index.tpl';
    $this->view_display();
  }

  public function show() {
    $this->view->assign('title', 'これは商品詳細のページ');
    $this->view->assign('name', '商品詳細ページ');
    $this->file = 'product_show.tpl';
    $this->view_display();
  }
}
?>