<?php
class ReviewController extends BaseController {
  public function __construct() {
    parent::__construct();
  }

  public function run() {
    $this->index();
  }

  public function index() {
    $this->view->assign('title', 'これはレビュー一覧のページ');
    $this->view->assign('name', 'レビュー一覧ページ');
    $this->file = 'review.tpl';
    $this->view_display();
  }
}
?>
