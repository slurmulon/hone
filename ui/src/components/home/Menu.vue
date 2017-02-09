<template>
  <div class="home-menu">
    <a class="pure-button">Login</a>
    <a class="pure-button">Register</a>
  </div>
</template>

<script>
export default {
  name: 'home-menu'
}
</script>

<style>
.home-nav {
}

/* FIXME: make #menu fixed instead, much easier to position the home-nav with this;
.home-menu {
  position: fixed;
  right: 0;
}

.home-menu .pure-button {
  border: 3px solid #686884;
  padding: .75em 1em;
  margin: 1em 1em 1em 0;
  font-size: 1em;
  background: none;
}
</style>
