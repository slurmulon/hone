<template>
  <div id="menu">
    <div class="pure-menu logo">
      <a class="pure-menu-heading" href="#">hone</a>

      <!-- FIXME: move this slot out of the logo div -->
      <slot></slot>
    </div>
  </div>
</template>

<script>
export default {
  name: 'app-header'
}
</script>

<style scoped>
/*#menu .pure-menu-heading {
  width: 150px;
}*/
</style>

