{extends file='layout.tpl'}
{block name=body}
    <div class="container">
        <div class="row">
            <nav aria-label="...">
                <ul class="pager">
                    <li class="previous"><a href="{$SCRIPT_NAME}?date={$previous_date}">前日</a></li>
                    <li><a href="{$SCRIPT_NAME}?date={$today}">今日</a></li>
                    <li class="next"><a href="{$SCRIPT_NAME}?date={$next_date}">明日</a></li>
                </ul>
            </nav>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <h1>{$print_specified_date}のメニュー</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <h1>Aセット</h1>
                <a class="thumbnail" href="{$SCRIPT_NAME}?type=show&id={$a_set.id}">
                    <img src="http://placehold.it/1600x1200">
                    <div class="caption">
                        <h1>{$a_set.name}</h1>
                        <p>{$a_set.energy}</p>
                        <p>{$a_set.price}</p>
                        <hr>
                        {if $a_set.has_sold_out eq 't'}
                            <p>売り切れ</p>
                        {else}
                            <p>販売中</p>
                        {/if}
                    </div>
                </a>
            </div>
            <div class="col-sm-6">
                <h1>Bセット</h1>
                <a class="thumbnail" href="{$SCRIPT_NAME}?type=show&id={$b_set.id}">
                    <img src="http://placehold.it/1600x1200">
                    <div class="caption">
                        <h1>{$b_set.name}</h1>
                        <p>{$b_set.energy}</p>
                        <p>{$b_set.price}</p>
                        <hr>
                        <p>
                        {if $b_set.has_sold_out eq 't'}
                            売り切れ
                        {else}
                            販売中
                        {/if}
                        </p>
                    </div>
                </a>
            </div>
        </div>

        <div class="row">
            <div class="col col-sm-12">
                <h1>常設メニュー</h1>
                <div class="table table-hover">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="text-center">メニュー</th>
                            <th class="text-center">価格</th>
                            <th class="text-center">カロリー</th>
                            <th class="text-center">販売状況</th>
                        </tr>
                        </thead>
                        <tbody>
                        {foreach from=$permanents item=p}
                            <tr title="{$p.name}の詳細" onclick="location.href='{$SCRIPT_NAME}?type=show&id={$p.id}'">
                                <td class="text-center">{$p.name}</td>
                                <td class="text-right">{$p.price} 円</td>
                                <td class="text-right">{$p.energy} kcal</td>
                                <td class="{if $p.has_sold_out eq 't'}warning{else}success{/if} text-center">
                                    {if $p.has_sold_out eq 't'}売り切れ{else}販売中{/if}
                                </td>
                            </tr>
                        {/foreach}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
{/block}