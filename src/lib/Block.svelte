<script>
    export let title;
    export let subTitle;
    export let image;
    export let content;
    export let boxWidth = '50%';
</script>

<div id="box" style="--box-width: {boxWidth};">
    <div id="title-wrapper"><span id="title">{title}</span></div>
    <div id="content">
        
        {#if image != undefined}
            <img class="textbox-contents" src={image} />
        {/if}

        {#if subTitle != undefined}
            <h2 class="textbox-contents">{subTitle}</h2>
        {/if}

        <div class="textbox-contents">
            {@html content}
        </div>

    </div>
</div>
