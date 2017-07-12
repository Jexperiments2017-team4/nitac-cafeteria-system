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
      case "uso":
        $this->update_sold_out();
        break;
      default:
        $this->index();
    }
  }

  public function index() {
    $this->fetch_menus();
    $this->view->assign('title', 'これは商品のページ');
    $this->view->assign('name', '商品一覧ページ');
    $this->file = 'product_index.tpl';
    $this->view_display();
  }

  public function show() {
    $product = new Product();
    $this->view->assign('product', pg_fetch_array($product->get_menu($_REQUEST['id'])));

    $this->view->assign('title', 'これは商品詳細のページ');
    $this->view->assign('name', '商品詳細ページ');

    $review = new Review();
    $reviews = $review->get_data($_REQUEST['id']);
    $this->view->assign('review_rows', pg_num_rows($reviews));
    while($rows = pg_fetch_array($reviews)){
        $this->view->append('reviews', $rows);
    }

    $this->file = 'product_show.tpl';
    $this->view_display();
  }

  public function update_sold_out(){
    $product = new Product();
    $has_sold_out = $_POST['has_sold_out'];
    $id = $_POST['id'];
    $menu = $product->update_sold_out($has_sold_out, $id);
    $this->view->assign('product', pg_fetch_array($menu));
    $text = $has_sold_out == 'true' ? '売り切れ' : '販売中';
    echo json_encode(['text' => $text]);
    /*
    $.ajax({
      type: 'POST',
      url: "{$SCRIPT_NAME}?type=uso",
      data {
        has_sold_out: true,
        id: '{$product.id}'
      }
      .done(function(data, status, jqXHR){

      })
      .fail(function(jqXHR, status, error){

      })
    });
    */
  }

  private function fetch_menus() {
    $product = new Product();

    // 常設メニューをとる
    $permanents = $product->get_data_by_query(0);
    while($rows = pg_fetch_array($permanents)){
      $this->view->append('permanents', $rows);
    }

    // Aセットをとる
    $a_set = $product->get_data_by_query(1);
    $this->view->assign('a_set', pg_fetch_array($a_set));

    // Bセットをとる
    $b_set = $product->get_data_by_query(2);
    $this->view->assign('b_set', pg_fetch_array($b_set));
  }
}
?>