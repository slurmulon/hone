<template>
  <div id="menu">
    <div class="pure-menu logo">
      <a class="pure-menu-heading" href="#">hone</a>

      <slot></slot>
      <!-- <router-view name="menu"></router-view> -->
    </div>
  </div>
</template>

<script>
export default {
  name: 'app-header'
}
</script>

<style>
#menu .pure-menu-heading {
  width: 150px;
}
</style>
