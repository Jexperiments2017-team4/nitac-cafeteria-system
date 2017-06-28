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
            </div>
            <div class="col-sm-12">
                <div class="list-group">
                    {foreach from=$permanents item=p}
                        <a href="{$SCRIPT_NAME}?type=show&id={$p.id}" class="list-group-item">
                            <div class="media">
                                <div class="media-body">
                                    <table>
                                        <tr>
                                            <th>{$p.name}</th>
                                            <td>{$p.price}</td>
                                            <td>{$p.energy}</td>
                                        </tr>
                                    </table>
                                </div>
                                <p class="media-right">
                                {if $p.has_sold_out eq 't'}
                                    <p>売り切れ</p>
                                {else}
                                    <p>販売中</p>
                                {/if}
                                </p>
                            </div>
                        </a>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
{/block}