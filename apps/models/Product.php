<?php
class Product extends BaseModel {
  public function get_data(){
    $result = pg_query('SELECT * FROM products');
    if(!$result){
      die('クエリ取得に失敗しました。'.pg_last_error());
    }
    return pg_fetch_array($result);
  }
}
?>
