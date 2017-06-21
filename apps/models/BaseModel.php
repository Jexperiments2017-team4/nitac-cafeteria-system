<?php
  class BaseModel { 
            
    public function __construct() {
        $this->db_connect();
    }
 
    private function db_connect(){
      $link = pg_connect(_DSN);
      if(!$link){
        die('接続失敗です。'.pg_last_error());
      }
      print('接続に成功しました。<br>');
    }
  }
?>