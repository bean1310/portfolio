<template>
    <div id="box" :style="getStyle">
        <div id=title-wrapper><span id=title>{{ title }}</span></div>
        <div id="content">
            <img v-if="image" class="textbox-contents" :src="getImage.src">
            <h2 v-if="subTitle" class="textbox-contents">{{ subTitle }}</h2>
            <div v-html="content" class="textbox-contents"/>
        </div>
    </div>
</template>

<style lang="scss" scoped>
    h2 {
        font-size: 1em;
        margin: auto;
    }

    .textbox-contents {
        width: 80%;
        margin: auto;
        margin-top: 20px;
        line-height: 2em;
        color: $textColor;
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
</style>

<script>
export default {
    name: 'textbox',
    props: {
        title: String,
        subTitle: String,
        image: String,
        content: String,
        boxWidth: {
            type: String,
            default: '50%',
        }
    },
    computed: {
        getStyle: function() {
            return {
                'width' : this.boxWidth
            };
        },
        getImage: function() {
            return {
                'src' :this.image
            };
        }
    }
}
</script>