<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>{block name=title}明石高専学生食堂{/block}</title>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- our CSS -->
        <link rel="stylesheet" href="./css/app.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <script type="text/javascript">
            $(function() {
                // 販売ステータス変更処理
                // 販売ステータスラジオボタンの変更で発火
                $('input[name="sale-status"]').change(function() {
                    var has_sold_out = ($(this).val() == new String("売り切れ")); // confirmの結果によらず、ボタンが押された時点でhas_sold_outは変更されている
                    if (confirm("売り切れ情報を変更しますか?")) {
                        $.ajax(
                            {
                                type: 'POST',
                                url: "{$SCRIPT_NAME}?type=uso",
                                data: {
                                    has_sold_out: has_sold_out,
                                    id: '{$product.id}'
                                }
                            }
                        ).done(function (data, status, jqXHR) {
                            var hoge = JSON.parse(data);
                            $('#products-selling-status')
                                .text((JSON.parse(data))['text'])
                                .attr("class", has_sold_out ? "products-selling-status-sold-out" : "products-selling-status-now-on-sale");
                        }).fail(function (jqXHR, status, error) {
                        })
                    } else {
                        if (!has_sold_out) {
                            $('#sold-out-button').attr("class", "btn btn-default active");
                            $('#now-on-sale-button').attr("class", "btn btn-default");
                            $('input[name=sale-status]').val(['売り切れ'])
                        } else {
                            $('#sold-out-button').attr("class", "btn btn-default");
                            $('#now-on-sale-button').attr("class", "btn btn-default active");
                            $('input[name=sale-status]').val(['販売中'])
                        }
                    }
                });
            });
        </script>
    </head>
    <body>
        {block name=body}{/block}
    </body>
</html>