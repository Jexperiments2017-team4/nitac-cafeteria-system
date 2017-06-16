{extends file='layout.tpl'}
{block name=body}
    <div class="container">
        <div class="row">
            <a class="btn btn-default" href="#">&lt;前日</a>
            <a class="btn btn-default" href="#">今日</a>
            <a class="btn btn-default" href="#">次日&gt;</a>
        <div class="row">
            <div class="col-sm-6">
                <h1>Aセット</h1>
                <a class="thumbnail" href="#">
                    <img src="http://placehold.it/400x300">
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
                <a class="thumbnail" href="#">
                    <img src="http://placehold.it/400x300">
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
    </div>
{/block}
