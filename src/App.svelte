<script>
  import { loop_guard, update_await_block_branch } from "svelte/internal";
  import IntersectionObserver from "svelte-intersection-observer";

  import Block from "./lib/Block.svelte"

  let about_element;
  let home_element;
  let works_element;
  let is_about_in_viewpoint;
  let is_home_in_viewpoint;
  let is_works_in_viewpoint;
  let contentName = 'Home';
  let banner;

  $: if (is_about_in_viewpoint) {
    contentName = 'About'
  }

  $: if (is_home_in_viewpoint) {
    contentName = 'Home'
  }

  $: if (is_works_in_viewpoint) {
    contentName = 'Works'
  }
</script>

<main>
  <div class="banner">
    <p id="header">{contentName}</p>
  </div>
  <div id="contents">
  <IntersectionObserver bind:element={home_element} bind:intersecting={is_home_in_viewpoint} rootMargin="-20% 0px">
    <div bind:this={home_element} class="page" id="home_page">
      <p><b>Welcome to my portfolio</b></p>
      <img src="img/top.jpeg" id="top_page_photo" />
      <p>白と黒が好きです．コンピュータの0と1と同じように．</p>
    </div>
  </IntersectionObserver>
  <hr>
  <IntersectionObserver bind:element={about_element} bind:intersecting={is_about_in_viewpoint} rootMargin="-50% 0px">
    <div bind:this={about_element} class="about, page">
      <Block title={"Basic Info"} content={
        "（よく使う）ハンドルネーム：BEAN<br> \
        所属：NTT Communications<br> \
        お仕事キーワード：OpenStack, Private Cloud"
      } />
      <Block
        title="SNS"
        content='
          Twitter：<a href="https://twitter.com/bean_public" target="_blank" rel="noopener">@bean_public</a><br>
          GitHub：<a href="https://github.com/bean1310" target="_blank" rel="noopener">BEAN</a><br>
          読書メータ：<a href="https://bookmeter.com/users/653057" target="_blank" rel="noopener">BEAN</a><br>
          KeyBase：<a href="https://keybase.io/bean_comp" target="_blank" rel="noopener">BEAN</a>
        '
      />
      <Block
        title="Sites"
        content='
          技術ブログのつもり...：<a href="https://beanlog.xyz" target="_blank" rel="noopener">BEANLOG</a><br>
        '
      />
    </div>
  </IntersectionObserver>
  <hr>
  <IntersectionObserver bind:element={works_element} bind:intersecting={is_works_in_viewpoint} rootMargin="-50% 0px">
    <div bind:this={works_element} name="works" class="page">
          <Block 
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
          <Block
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
          <Block
              title="Portfolio"
              sub-title="このページ"
              image='./img/works/portfolio.png'
              content='
                  <p>
                      <a href="https://github.com/bean1310/portfolio" target="_blank" rel="noopener">GitHub</a><br>
                      JavaScript, Svelte, Sass(SCSS)
                  </p>
              '
              box-width='40%' 

          />
          <Block
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
          <Block
            title="Contributions"
            content='
            <p>寄稿・載ったもの</p>
            <ul>
                <li><a href="https://engineers.ntt.com/entry/2022/12/06/081251" target="_blank" rel="noopener">uefi-rsを使わずにRustでMikanOSをやっていく話<a/></li>
                <li><a href="https://engineers.ntt.com/entry/2023/01/24/102834" target="_blank" rel="noopener">NTT Comのエンジニアコミュニティイベント【Tech-Night/Tech-Midnight】<a/></li>
            </ul>
            '
            box-width="40%"
          />
          <Block
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
  </IntersectionObserver>
</main>
