{extends file='layout.tpl'}
{block name=body}
    <div class="container">
        <div class="row">
            <nav aria-label="...">
                <ul class="pager">
                    <li class="previous"><a href="#">前日</a></li>
                    <li><a href="#">今日</a></li>
                    <li class="next"><a href="#">明日</a></li>
                </ul>
            </nav>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <h1>Aセット</h1>
                <a class="thumbnail" href="{$SCRIPT_NAME}?type=show">
                    <img src="http://placehold.it/1600x1200">
                    <div class="caption">
                        <h1>メニュー名</h1>
                        <p>カロリー</p>
                        <p>金額</p>
                        <hr>
                        <p>販売中</p>
                    </div>
                </a>
            </div>
            <div class="col-sm-6">
                <h1>Bセット</h1>
                <a class="thumbnail" href="{$SCRIPT_NAME}?type=show">
                    <img src="http://placehold.it/1600x1200">
                    <div class="caption">
                        <h1>メニュー名</h1>
                        <p>カロリー</p>
                        <p>金額</p>
                        <hr>
                        <p>売り切れ</p>
                    </div>
                </a>
            </div>
        </div>

        <div class="row">
            <div class="col col-sm-12">
                <h1>常設メニュー</h1>
            </div>
            <div class="col-sm-12">
                <div class="list-group">
                    {for $foo=1 to 10}
                        <a href="{$SCRIPT_NAME}?type=show" class="list-group-item">
                            <div class="media">
                                <div class="media-body">
                                    <table>
                                        <tr>
                                            <th>商品名</th>
                                            <td>\114,514</td>
                                            <td>カロリー</td>
                                        </tr>
                                    </table>
                                </div>
                                <p class="media-right">
                                    販売中
                                </p>
                            </div>
                        </a>
                    {/for}
                </div>
            </div>
        </div>
    </div>
{/block}