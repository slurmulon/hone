<template>
  <div id="layout">
    <header>
      <div id="menu">
        <div class="pure-menu">
          <a class="pure-menu-heading" href="#">hone</a>

          <slot name="menu"></slot>
        </div>
      </div>
    </header>

    <main>
      <div id="main">
        <router-view></router-view>
      </div>
    </main>

    <footer>
      <slot name="footer"></slot>
    </footer>
  </div>
</template>
