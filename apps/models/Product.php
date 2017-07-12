<?php
class Product extends BaseModel {
  public function get_data(){
    $result = pg_query('SELECT * FROM products');
    if(!$result){
      die('クエリ取得に失敗しました。'.pg_last_error());
    }
    return $result;
  }

  public function get_data_by_query($kind, $date = null){
    if($date == null){
      $date = date("Ymd");
    }
    $sql = "SELECT * FROM products WHERE kind = '$kind' AND start_date <= '$date' AND end_date >= '$date'";
    $result = pg_query($sql);
    if(!$result){
      die('クエリ取得に失敗しました。'.pg_last_error());
    }
    return $result;
  }

  public function get_menu($id){
    $sql = "SELECT * FROM products WHERE id = '$id'";
    $result = pg_query($sql);
    if(!$result){
      die('クエリ取得に失敗しました。'.pg_last_error());
    }
    return $result;
  }

  public function update_sold_out($has_sold_out, $id){
    $sql = "UPDATE products SET has_sold_out = $1 WHERE id = $2";
    $result = pg_query_params($sql, array($has_sold_out, $id));
    if(!$result){
      die('更新に失敗。'.pg_last_error());
    }

    return $this->get_menu($id);
  }
}
?>
