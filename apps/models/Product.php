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

  public function get_menu($id){
    $sql = "SELECT * FROM products WHERE id = '$id'";
    $result = pg_query($sql);
    if(!$result){
      die('クエリ取得に失敗しました。'.pg_last_error());
    }
    return $result;
  }

  public function update_has_sold_out($has_sold_out, $id){
    $sql = "UPDATE products SET has_sold_out = $1 WHERE id = $2";
    $result = pg_query_params($sql, array($has_sold_out, $id));
    if(!result){
      die('更新に失敗。'.pg_last_error());
    }

    return $this->getmenu($id);
  }
  public function create($product_id, $name, $point, $comment){
    $sql = "INSERT into reviews(product_id, name, point, comment) VALUES($1, $2, $3, $4)";
    $result = pg_query_params($sql, array($product_id, $name, $point, $comment));
      if(!result) {
          die('作成に失敗。' . pg_last_error());
      }
  }
}
?>
