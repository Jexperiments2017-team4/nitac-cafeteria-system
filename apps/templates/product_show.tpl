{extends file='layout.tpl'}
{block name=body}
    <div class="container">
        <div class="row">
            <div class="col col-sm-12">
                {if $product.has_sold_out eq 't'}
                    <h1 class="products-selling-status-sold-out" id="products-selling-status">売り切れ</h1>
                {else}
                    <h1 class="products-selling-status-now-on-sale" id="products-selling-status">販売中</h1>
                {/if}
                <h1 class="products-product-name">{$product.name}</h1>
                <img class="products-product-image" src="http://placehold.it/1600x1200">
            </div>
            <div class="col col-sm-6">
                <p class="products-product-energy">エネルギー: {$product.energy} kcal</p>
                <p class="products-product-lipid">脂質: {$product.lipid} g</p>
            </div>
            <div class="col col-sm-6">
                <p class="products-product-protein">たんぱく質: {$product.protein} g</p>
                <p class="products-product-salt">塩分: {$product.salt} g</p>
            </div>
            <div class="col col-sm-6 col-sm-offset-6">
                <p>\{$product.price}</p>
                <div class="btn-group" data-toggle="buttons">
                    {if $product.has_sold_out eq 't'}
                        <label id="now-on-sale-button" class="btn btn-default">
                            <input type="radio" name="sale-status" value="販売中">販売中
                        </label>
                        <label id="sold-out-button" class="btn btn-default active">
                            <input type="radio" name="sale-status" value="売り切れ" checked>売り切れ
                        </label>
                    {else}
                        <label id="now-on-sale-button" class="btn btn-default active">
                            <input type="radio" name="sale-status" value="販売中" checked>販売中
                        </label>
                        <label id="sold-out-button" class="btn btn-default">
                            <input type="radio" name="sale-status" value="売り切れ">売り切れ
                        </label>
                    {/if}
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col col-sm-12">
                <h1>評価</h1>
                {if {$review_rows} == 0}
                    <p>レビューがありません。</p>
                {else}
                    {foreach from=$reviews item=review name=reviewsloop}
                        {if $smarty.foreach.reviewsloop.index < 3}
                            <div class="review">
                                <div class="review-title">
                                    <p class="review-penname">{$review.name}さんのレビュー</p>
                                    <p class="review-score">{$review.point} / 5点</p>
                                </div>
                                <p class="review-body">{$review.comment}</p>
                            </div>
                        {/if}
                    {/foreach}
                {/if}
                <a href="{$SCRIPT_NAME}?class=review&type=show&product_id={$product.id}">すべてのレビューを表示</a>
                <h1>レビューを投稿する</h1>
                <form action="{$SCRIPT_NAME}?class=review&type=create&product_id={$product.id}" method="post">
                    <div>
                        <label for="inputName">名前</label>
                        <input type="text" name="name" class="form-control" id="inputName" placeholder="名前">
                    </div>
                    <label for="score1">点数</label>
                    <label class="radio-inline">
                        <input type="radio" name="score" id="score1" value="1"> 1
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="score" id="score2" value="2"> 2
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="score" id="score3" value="3"> 3
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="score" id="score4" value="4"> 4
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="score" id="score5" value="5"> 5
                    </label>
                    <div class="form-group">
                        <label for="inputReview">内容</label>
                        <textarea class="form-control" name="comment" id="inputReview" rows="3" placeholder="内容"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">投稿する</button>
                </form>
            </div>
        </div>
    </div>
{/block}