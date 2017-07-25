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
        $this->view->assign('review_rows', pg_num_rows($reviews));
        while($rows = pg_fetch_array($reviews)){
          $this->view->append('reviews', $rows);
        }

        $avg_point = $review->get_avg_point($product_id);
        $avg_point = pg_fetch_result($avg_point, 0);
        $avg_point = round($avg_point, 1, PHP_ROUND_HALF_DOWN);
        $this->view->assign('avg_point', $avg_point);

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
        $url = "";
        if($this->action == 'product'){
            $url = "{$SCRIPT_NAME}?class=product&type=show&id={$product_id}";
        }
        else{
            $url = "{$SCRIPT_NAME}?class=review&type=index&product_id={$product_id}";
        }
        header("Location: {$url}");
    }
}
?>
