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
}

/* FIXME: scoping is fucked up here, doesn't apply to element */;
.logo {
  height: 100%;
}

.dash-menu {
  left: 0;
  width: 150px;
  height: 100%;
  background: #261E25;
  /*background: #f2f2f2;*/
  border-right: 1px solid #333;
}

.dash-menu a {
  display: block;
  padding: 1em;
  border-bottom: 1px solid #333;
}
</style>

