<template>
    <div name="works">
        <h1>Works</h1>
        <div id="contents">
            <textbox 
                title="RaspiMonitor"
                sub-title="Raspberry Piの状態を表示するWebアプリケーション"
                image='./img/works/raspiMonitor.png'
                content='<p>
                    <a href="https://github.com/bean1310/RaspiMonitor" target="_blank" rel="noopener">GitHub</a><br>
                    PHP, Laravel, jQuery, Vue.js
                </p>
                '
                box-width='40%'
            />
            <textbox
                title="SnakeGame"
                sub-title="ヘビのあのゲーム"
                image='./img/works/snakeGame.png'
                content='
                    <p>
                        <a href="https://github.com/bean1310/snakeGame" target="_blank" rel="noopener">GitHub</a><br>
                        C, ncurses
                    </p>
                '
                box-width='40%' 

            />
            <textbox
                title="Portfolio"
                sub-title="このページ"
                image='./img/works/portfolio.png'
                content='
                    <p>
                        <a href="https://github.com/bean1310/snakeGame" target="_blank" rel="noopener">GitHub</a><br>
                        JavaScript, Vue, Sass
                    </p>
                '
                box-width='40%' 

            />
            <textbox
                title="Others"
                content='
                    <p>他にもオープンソースでないものいろいろやってます．</p>
                    <ul>
                        <li>NFCカードを利用した蔵書管理WPFアプリ</li>
                        <li><a href="https://github.com/bean1310/2048-java-practice" target="_blank" rel="noopener">Javaによる2048的ゲーム</a></li>
                        <li>Rpi用の赤外線を簡単に送信/受信するソフトウェア: <a href="https://github.com/bean1310/sendIR-RPi">sendIR-RPi</a> / <a href="https://github.com/bean1310/readIR-RPi">readIR-RPi</a>
                    </ul>
                '
                box-width='40%' 

            />
        </div>
    </div>
</template>

<style lang="scss" scoped>

    #contents {
        display: block;
        margin: auto;
        width: 90%;
    }
</style>

<script>
import textbox from '@/components/textbox.vue'

export default {
  name: 'About',
  components: {
    textbox
  }
}
</script>