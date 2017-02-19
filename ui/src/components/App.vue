<template>
  <div id="layout">
    <header>
      <!-- <div id="menu"> -->
      <!--   <div class="pure-menu logo"> -->
      <!--     <a class="pure-menu-heading" href="#">hone</a> -->
      <!--   </div> -->

      <!--   <router-view name="menu"></router-view> -->
      <!-- </div> -->
      <router-view name="menu"></router-view>
    </header>

    <main>
      <router-view></router-view>
    </main>

    <footer>
      <router-view name="footer"></router-view>
    </footer>
  </div>
</template>
