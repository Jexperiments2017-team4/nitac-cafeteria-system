<!DOCTYPE html>
<html lang="jp">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>レビュー</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <div class ="row">
        <div class="col col-sm-4">
        <button type="button" class="btn btn-link">すべてのレビューを表示する</button>
            <h3>レビューを投稿する。</h3>

            <form action="test2.php" method="post">
                <div>
                    <label for="inputName">名前</label>
                    <input type="text" name="name" class="form-control" id="inputName" placeholder="名前">
                </div>
                <label for="inlineRadio1">点数</label>
                <label class="radio-inline">
                    <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 1
                </label>
                <label class="radio-inline">
                    <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 2
                </label>
                <label class="radio-inline">
                    <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> 3
                </label>
                <label class="radio-inline">
                    <input type="radio" name="inlineRadioOptions" id="inlineRadio4" value="option4"> 4
                </label>
                <label class="radio-inline">
                    <input type="radio" name="inlineRadioOptions" id="inlineRadio5" value="option5"> 5
                </label>
                <div class="form-group">
                    <label for="inputReview">内容</label>
                    <textarea class="form-control" id="inputReview" rows="3" placeholder="内容"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">投稿する</button>
            </form>

            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="js/bootstrap.min.js"></script>
        </div>
    </div>
</div>
</body>
</html>
