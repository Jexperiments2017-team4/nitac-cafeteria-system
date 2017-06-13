<?php
class ProductController extends BaseController {
  public function __construct() {
    parent::__construct();
  }

  public function index() {
    $this->view->assign('title', 'これは商品のページ');
    $this->view->assign('name', 'Product');
    $this->file = 'product_index.tpl';
    $this->view_display();
  }
}
?>