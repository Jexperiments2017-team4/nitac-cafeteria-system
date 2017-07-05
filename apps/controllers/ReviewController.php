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

    public function index($pid = 1)
    {
        $product_id = $pid;
        if(isset($_REQUEST['product_id'])){
          $product_id = $_REQUEST['product_id'];
        }
        $this->view->assign('product_id', $product_id);

        $review = new Review();
        $reviews = $review->get_data($product_id);
        while($rows = pg_fetch_array($reviews)){
          $this->view->append('reviews', $rows);
        }

        $this->file = 'review_index.tpl';
        $this->view_display();
    }

    public function create()
    {
        $product_id = $_REQUEST['product_id'];
        $name = $_POST['name'];
        $point = $_POST['score'];
        $comment = $_POST['comment'];
        $review = new Review();
        $review->create($product_id, $name, $point, $comment);
        // TODO: type:createを変える
        $this->index($product_id);
    }
}
?>
