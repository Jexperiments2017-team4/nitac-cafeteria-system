<?php
class ReviewController extends BaseController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function run()
    {
        switch ($this->type) {
            case "create":
                $this->create();
                break;
            default:
                $this->index();
        }
    }

    public function index()
    {
        $this->view->assign('title', 'これはレビュー一覧のページ');
        $this->view->assign('name', 'レビュー一覧ページ');
        $this->view->assign('product_id', $_REQUEST['product_id']);
        $this->file = 'review_index.tpl';
        $this->view_display();
    }

    public function create()
    {
        $product_id = $_REQUEST['product_id'];
        $name = $_POST['name'];
        $point = $_POST['score'];
        $comment = $_POST['comment'];
        $product = new Product($product_id, $name, $point, $comment);
        $product->create();
        $this->index();
    }
}
?>
