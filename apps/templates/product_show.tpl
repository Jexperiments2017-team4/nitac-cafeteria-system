{extends file='layout.tpl'}
{block name=body}
    <div class="container">
        <div class="row">
            <div class="col col-sm-12">
                {if $product.has_sold_out eq 't'}
                    <h1 class="products-selling-status-sold-out">売り切れ</h1>
                {else}
                    <h1 class="products-selling-status-now-on-sale">販売中</h1>
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
                    <label class="btn btn-default active">
                        <input type="radio" autocomplete="off" checked>販売中
                    </label>
                    <label class="btn btn-default">
                        <input type="radio" autocomplete="off">売り切れ
                    </label>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col col-sm-12">
                <h1>評価</h1>
                <a href="{$SCRIPT_NAME}?class=review&type=show">すべてのレビューを表示</a>
                <h1>レビューを投稿する</h1>
            </div>
        </div>
    </div>
{/block}