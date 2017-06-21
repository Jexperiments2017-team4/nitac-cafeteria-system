{extends file='layout.tpl'}
{block name=body}
<div class="container">
    <div class ="row">
        <div class="col col-sm-4">
        <button type="button" class="btn btn-link">すべてのレビューを表示する</button>
            <h3>レビューを投稿する</h3>

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
        </div>
    </div>
</div>
{/block}
