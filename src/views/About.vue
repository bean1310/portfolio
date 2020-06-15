<template>
  <div class="about">
    <h1>About</h1>
    <textbox
      title="Basic Info"
      content="
       （よく使う）ハンドルネーム：BEAN<br>
       （信じるかどうか任せますが）本名：松下 意悟<br>
       所属：立命館大学大学院 情報理工学研究科<br>
       研究キーワード：IoT, OS, セキュリティ
      " />
    <textbox
      title="SNS"
      content='
        Twitter：<a href="https://twitter.com/bean_public" target="_blank" rel="noopener">@bean_public</a><br>
        GitHub：<a href="https://github.com/bean1310" target="_blank" rel="noopener">BEAN</a><br>
        読書メータ：<a href="https://bookmeter.com/users/653057" target="_blank" rel="noopener">BEAN</a><br>
        KeyBase：<a href="https://keybase.io/bean_comp" target="_blank" rel="noopener">BEAN</a>
      '
    />
    <textbox
      title="Sites"
      content='
        技術ブログのつもり...：<a href="https://beanlog.xyz" target="_blank" rel="noopener">BEANLOG</a><br>
        個人wiki．ブログにならない話：<a href="https://wiki.beanlog.xyz" target="_blank" rel="noopener">BEANLOG WIKI</a>
      '
    />
  </div>
</template>

<style lang="scss" scoped>

h1 {
  font-size: 40px;
  font-style: italic;
  color: $accentColor;
}

</style>

<script>
// @ is an alias to /src
import textbox from '@/components/textbox.vue'

export default {
  name: 'About',
  components: {
    textbox
  }
}
</script>