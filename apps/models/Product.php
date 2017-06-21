<?php
class Product extends BaseModel {
  public function get_data($view){
    $result = pg_query('SELECT * FROM products');
    if(!$result){
      die('クエリ取得に失敗しました。'.pg_last_error());
    }
    while($rows = pg_fetch_array($result)){
      $view->append('products', $rows);
    }
  }
}
?>
