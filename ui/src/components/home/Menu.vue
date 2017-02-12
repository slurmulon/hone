<template>
  <div class="home-menu">
    <ul class="home-nav">
      <li>
        <a href="#">
          <i class="fa fa-cogs"></i>
          Install
        </a>
      </li>
      <li>
        <a href="https://github.com/slurmulon/hone">
          <i class="fa fa-github"></i>
          Source
        </a>
      </li>
      <li>
        <a href="#">
          <i class="fa fa-question"></i>
          About
        </a>
      </li>
      <li>
        <a href="#">
          <i class="fa fa-phone"></i>
          Contact
        </a>
      </li>
    </ul>
    <!-- <a class="pure-button">Login</a>
    <a class="pure-button">Register</a> -->
    <router-link
        to="login"
        class="pure-button">
      Login
    </router-link>
    <router-link 
        to="register"
        class="pure-button">
      Register
    </router-link>
  </div>
</template>

<script>
export default {
  name: 'home-menu'
}
</script>

<style>
ul.home-nav {
  display: inline-flex;
  list-style-type: none;
  margin: 0;
  padding: 0;
}

ul.home-nav li {
  padding-right: 1.5em;
}

ul.home-nav li i {
  margin-right: 0.5em;
}

ul.home-nav li a {
  text-decoration: none;
  transition: color 0.5s ease;
}

ul.home-nav li a:hover {
  color: white !important;
}

.home-menu {
  position: absolute;
  right: 0;
}

.home-menu .pure-button {
  border: 3px solid #686884;
  /*border: 3px solid #A4C8DD;*/
  padding: .75em 1em;
  margin: 1em 1em 1em 0;
  font-size: 1em;
  background: none;
}

.home-menu .pure-button:hover {
  /*-webkit-filter: blur(1px); 
  -moz-filter: blur(1px); 
  filter: blur(1px);*/
  transition: all 0.5s ease;
}
</style>
