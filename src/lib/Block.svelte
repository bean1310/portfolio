<script>
    export let title;
    export let subTitle;
    export let image;
    export let content;
</script>

<div id="box">
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

<style scoped>
    h2 {
        font-size: 1em;
        margin: auto;
    }
    .textbox-contents {
        width: 80%;
        margin: auto;
        margin-top: 20px;
        line-height: 2em;
    }
    #content {
        margin-top: 10px;
    }
    #box {
        position: relative;
        display: inline-block;
        vertical-align: top;
        width: 50%;
        border: solid;
        border-width: 3px;
        border-color: white;
        margin: 20px 15px 15px 15px;
        padding-bottom: 10px;
    }
    #box #title {
        color: #000000;
        width: 10px;
        background-color: white;
        padding-left: 10px;
        padding-right: 10px;
    }
    #box #title-wrapper {
        position: absolute;
        font-weight: bold;
        font-size: 1.5em;
        top: -15px;
        left: 0;
        right: 0;
        text-align: center;
        margin-bottom: 10px;
    }

    @media (prefers-color-scheme: light) {
        #box {
            border-color: #000000;
        }
        #box #title {
            background-color: #000000;
            color: aliceblue;
        }
    }

    @media screen and (max-width: 1024px) {
        #box {
            width: 90%;
        }
    }
</style>
