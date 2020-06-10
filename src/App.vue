<template>
  <div id="app">
    <div id="nav">
      <div id="route_container">
        <router-link to="/">Home</router-link><br>
        <router-link to="/works">Works</router-link><br>
        <router-link to="/about">About</router-link>
      </div>
    </div>
    <div id="main">
      <router-view/>
      </div>
  </div>
</template>

<style lang="scss">

body {
  background-color:$backgroudColor;
}

p {
  color:$mainColor;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#main {
  width: 80%;
  float: right;
}

#nav {
  width: 20%;
  height: 50px;
  position: absolute;
  text-align: center;
  margin: 30px 30px 30px 50px;
  float: left;
}

#nav a {
  font-weight: bold;
  color: #c2c2c2;
  font-kerning: auto;
  line-height: 2em;
}

#nav a.router-link-exact-active {
  color:$accentColor;
}

#route_container {
  width: 80%;
  border: solid;
  border-color: $mainColor;
  border-width: 5px;
  padding: 10px 10px 10px 10px;
  font-size: 2em;

}
</style>
