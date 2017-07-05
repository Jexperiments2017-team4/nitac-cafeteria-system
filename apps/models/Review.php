<?php
class Review extends BaseModel {
  public function create($product_id, $name, $point, $comment){
    $sql = "INSERT INTO reviews(product_id, name, point, comment) VALUES($1, $2, $3, $4)";
    $result = pg_query_params($sql, array($product_id, $name, $point, $comment));
      if(!result) {
          die('作成に失敗。' . pg_last_error());
      }
  }
}
?>
