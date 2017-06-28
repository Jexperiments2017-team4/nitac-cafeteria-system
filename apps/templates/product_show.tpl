{extends file='layout.tpl'}
{block name=body}
    <h1>{$name}!</h1>
    <h1>{$product.name}</h1>
    <p>{$product.energy}</p>
    <p>{$product.price}</p>
    <a href="{$SCRIPT_NAME}?class=review&type=show">レビュー一覧</a>
{/block}