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
    $this->fetchMenu();
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

  private function fetchMenu() {
    $product = new Product();

    // 常設メニューをとる
    $permanents = $product->get_data_by_query(0);
    while($rows = pg_fetch_array($permanents)){
      $this->view->append('permanents', $rows);
    }

    // Aセットをとる
    $a_set = $product->get_data_by_query(1);
    $this->view->append('a_set', pg_fetch_array($a_set));

    // Bセットをとる
    $b_set = $product->get_data_by_query(2);
    $this->view->append('b_set', pg_fetch_array($b_set));
  }
}
?>