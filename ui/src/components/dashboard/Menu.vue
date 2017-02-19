<template>
  <app-header>
    <div class="dash-menu">
      <a href="#">Projects</a>
      <a href="#">Boards</a>
      <a href="#">Users</a>
    </div>
  </app-header>
</template>

<script>
import AppHeader from '../AppHeader'

export default {
  name: 'dashboard-menu',
  components: {
    AppHeader
  }
}
</script>

<style scoped>
#menu {
  bottom: 0;
  width: 150px;
  /*background: yellow;*/
}

/* FIXME: scoping is fucked up here, doesn't apply to element */;
.logo {
  height: 100%;
  background: pink;
}

.dash-menu {
  left: 0;
  width: 150px;
  height: 100%;
  background: red;
}
</style>

