<template>
  <app-header>
    <!-- TODO: maybe highlight link of page we're on -->
    <div class="portal-menu">
      <a href="#"><i class="fa fa-plus"></i></a>
      <a href="#"><i class="fa fa-cogs"></i></a>
      <a href="#"><i class="fa fa-users"></i></a>
    </div>
  </app-header>
</template>

<script>
import AppHeader from '../AppHeader'

export default {
  name: 'portal-menu',
  components: {
    AppHeader
  }
}
</script>

<style scoped>
/* FIXME: needs to be moved to a higher level, or refactor the template */
header {
  flex: 0 10%;
}

header > #menu {
  /*bottom: 0;*/
  /*width: 150px;*/
  /*width: 100%;*/
  height: 100%;
  width: auto;
}

/* FIXME: scoping is fucked up here, doesn't apply to element */;
header > #menu .logo {
  height: 100%;
  width: 100%;
}

.portal-menu {
  /*left: 0;*/
  /*width: 150px;*/
  width: 100%;
  height: 100%;
  background: #261E25;
  /*background: #f2f2f2;*/
  border-right: 1px solid #333;
  text-align: right;
}

.portal-menu a {
  display: block;
  padding: 1em;
  border-bottom: 1px solid #333;
}
</style>

