<template>
  <div id="layout">
    <header>
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
