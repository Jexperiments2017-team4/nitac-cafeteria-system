{extends file='layout.tpl'}
{block name=body}
<div class="container">
    <div class ="row">
        <div class="col col-sm-12">
            <nav aria-label="...">
                <ul class="pager">
                    <li class="previous"><a href="{$SCRIPT_NAME}?type=show&id={$product_id}">戻る</a></li>
                </ul>
            </nav>
            <h1>レビュー一覧</h1>
            {if {$review_rows} == 0}
                <p>レビューがありません。</p>
            {else}
            {foreach from=$reviews item=review}
            <div class="review">
                <div class="review-title">
                    <p class="review-penname">{$review.name}さんのレビュー</p>
                    <p class="review-score">{$review.point} / 5点</p>
                </div>
                <p class="review-body">{$review.comment}</p>
            </div>
            {/foreach}
            {/if}
        </div>
    </div>

    <div class="row">
        <div class="col col-sm-12">
            <h1>レビューを投稿する</h1>

            <form action="{$SCRIPT_NAME}?class=review&type=create&product_id={$product_id}" method="post">
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
