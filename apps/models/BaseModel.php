<?php
  class BaseModel { 
    protected $pdo;
    public function __construct() {
        $this->db_connect();
    }
 
    private function db_connect(){

      try{
          print(_DSN);
          $this->pdo= new PDO(_DSN);

          print('接続に成功しました。<br>');

          $sql = 'select * product';
      }catch (PDOException $e){
          print('Error:'.$e->getMessage());
          die();
      }
      // $link = pg_connect(_DSN);
      // if(!$link){
      //   die('接続失敗です。'.pg_last_error());
      // }
      // print('接続に成功しました。<br>');
    }
  }
?>