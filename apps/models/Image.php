<?php
  class ImageModel extends BaseModel {
            
    public function __construct() {
      parent::__construct();
      $result = pg_query('SELECT * FROM images');
      $rows = pg_num_rows($result);
      print("画像読み込み<br>rows:".$rows."<br>");
    }
  }
?>