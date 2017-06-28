<?php
class Product extends BaseModel {
  public function get_data(){
    $result = pg_query('SELECT * FROM products');
    if(!$result){
      die('クエリ取得に失敗しました。'.pg_last_error());
    }
    return $result;
  }

  public function get_data_by_query($kind){
    $sql = "SELECT * FROM products WHERE kind = '$kind'";
    $result = pg_query($sql);
    if(!$result){
      die('クエリ取得に失敗しました。'.pg_last_error());
    }
    return $result;
  }
}
?>
