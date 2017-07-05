{extends file='layout.tpl'}
{block name=body}
<div class="container">
    <div class ="row">
        <div class="col col-sm-12">
            <h1>レビュー一覧</h1>
            <div class="review">
                <div class="review-title">
                    <p class="review-penname">ほげ さんのレビュー</p>
                    <p class="review-score">3 / 5点</p>
                </div>
                <p class="review-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col col-sm-12">
            <h1>レビューを投稿する</h1>

            <form action="index.php" method="post">
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
                    <textarea class="form-control" id="inputReview" rows="3" placeholder="内容"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">投稿する</button>
            </form>
        </div>
    </div>
</div>
{/block}
