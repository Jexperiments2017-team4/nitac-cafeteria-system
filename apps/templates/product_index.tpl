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
                <h1>明石高専学生食堂</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <h2>{$print_specified_date}のメニュー</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <h1>Aセット</h1>
                <a class="thumbnail" href="{$SCRIPT_NAME}?type=show&id={$a_set.id}&date={$specified_date}">
                    <img src="{$IMAGES_PATH}{$a_set.name}.jpg">
                    <div class="caption">
                        <h1>{$a_set.name}</h1>
                        <p>{$a_set.price} 円</p>
                        <p>{$a_set.energy} kcal</p>
                        {if $specified_date eq $today}
                            <hr>
                            {if $a_set.has_sold_out eq 't'}
                                <p class="text-warning">売り切れ</p>
                            {else}
                                <p class="text-success">販売中</p>
                            {/if}
                        {/if}
                    </div>
                </a>
            </div>
            <div class="col-sm-6">
                <h1>Bセット</h1>
                <a class="thumbnail" href="{$SCRIPT_NAME}?type=show&id={$b_set.id}&date={$specified_date}">
                    <img src="{$IMAGES_PATH}{$b_set.name}.jpg">
                    <div class="caption">
                        <h1>{$b_set.name}</h1>
                        <p>{$b_set.price} 円</p>
                        <p>{$b_set.energy} kcal</p>
                        {if $specified_date eq $today}
                            <hr>
                            {if $b_set.has_sold_out eq 't'}
                                <p class="text-warning">売り切れ</p>
                            {else}
                                <p class="text-success">販売中</p>
                            {/if}
                        {/if}
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
                            {if $specified_date eq $today}
                                <th class="text-center">販売状況</th>
                            {/if}
                        </tr>
                        </thead>
                        <tbody>
                        {foreach from=$permanents item=p}
                            <tr title="{$p.name}の詳細" onclick="location.href='{$SCRIPT_NAME}?type=show&id={$p.id}&date={$specified_date}'">
                                <td class="text-center">{$p.name}</td>
                                <td class="text-right">{$p.price} 円</td>
                                <td class="text-right">{$p.energy} kcal</td>
                                {if $specified_date eq $today}
                                    <td class="{if $p.has_sold_out eq 't'}warning{else}success{/if} text-center">
                                        {if $p.has_sold_out eq 't'}売り切れ{else}販売中{/if}
                                    </td>
                                {/if}
                            </tr>
                        {/foreach}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
{/block}