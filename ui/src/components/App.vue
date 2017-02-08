<template>
  <!-- FIXME - replace this with the main layout -->
  <!-- <router-view></router-view> -->
  <div id="layout">
    <div id="menu">
      <div class="pure-menu">
        <a class="pure-menu-heading" href="#">hone</a>

        <ul class="pure-menu-list">
          <li class="pure-menu-item">
            <a href="#" class="pure-menu-link">
              <i class="fa fa-plus" aria-hidden="true"></i>
            </a>
          </li>
          <li class="pure-menu-item">
            <a href="#" class="pure-menu-link">
              <i class="fa fa-cubes" aria-hidden="true"></i> <!-- aka Layers -->
            </a>
          </li>
          <!-- <li class="pure-menu-item menu-item-divided pure-menu-selected"> -->
          <li class="pure-menu-item">
            <a href="#" class="pure-menu-link">
              <i class="fa fa-tags" aria-hidden="true"></i>
            </a>
          </li>
          <li class="pure-menu-item">
            <a href="#" class="pure-menu-link">
              <i class="fa fa-search" aria-hidden="true"></i>
            </a>
          </li>

          <!-- <li class="pure-menu-item" class="menu-item-divided pure-menu-selected"> -->
          <li class="pure-menu-item">
            <a href="#" class="pure-menu-link">
              <i class="fa fa-comments-o" aria-hidden="true"></i>
            </a>
          </li>
          <li class="pure-menu-item">
            <a href="#" class="pure-menu-link">
              <i class="fa fa-suitcase" aria-hidden="true"></i>
            </a>
          </li>
          <li class="pure-menu-item">
            <a href="#" class="pure-menu-link">
              <i class="fa fa-eye" aria-hidden="true"></i>
            </a>
          </li>
          <li class="pure-menu-item">
            <a href="#" class="pure-menu-link">
              <i class="fa fa-cogs" aria-hidden="true"></i>
            </a>
          </li>
          <li class="pure-menu-item">
            <a href="#" class="pure-menu-link">
              <i class="fa fa-user" aria-hidden="true"></i>
            </a>
          </li>
          <li class="pure-menu-item">
            <router-link
                to="/login"
                tag="a"
                class="pure-menu-link">
              <i class="fa fa-power-off" aria-hidden="true"></i>
            </router-link>
          </li>
        </ul>
      </div>
    </div>

    <div id="main">
      <router-view></router-view>
    </div>
  </div>
</template>
