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
                        <a href="https://github.com/bean1310/portfolio" target="_blank" rel="noopener">GitHub</a><br>
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
                        <li>Minecraft PE Script Mod : <a href="http://zns5.web.fc2.com/obs_ja.html" target="_blank" rel="noopener">Obs+ Mod</a></li>
                        <li>Minecraft PE Script Mod : <a href="http://zns5.web.fc2.com/shs_ja.html" target="_blank" rel="noopener">Steve_h8s_snow</a></li>
                    </ul>
                '
                box-width='40%' 

            />
            <textbox
                title="Research"
                content='
                    <p>研究に関しては現在3件の研究会発表があります．</p>
                    <ul>
                        <li><a href="http://id.nii.ac.jp/1001/00203880" target="_blank" rel="noopener">IoTの安全性向上のためのOSセキュリティ機能調査<a/></li>
                        <li><a href="http://id.nii.ac.jp/1001/00209628" target="_blank" rel="noopener">IoT 機器向けアプリケーション隔離実行基盤の検討<a/></li>
                        <li><a href="http://id.nii.ac.jp/1001/00217220" target="_blank" rel="noopener">Cortex-M用TrustZoneを用いたIoT機器向けタスク隔離実行基盤の設計<a/></li>
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