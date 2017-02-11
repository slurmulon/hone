<template>
  <!-- TODO: show "redirect url" -->
  <!-- TODO: remember me -->
  <!-- TODO: keep me logged in -->
  <div id="main" class="login">
    <div class="page">
      <legend><h2>Login</h2></legend>
      <form class="pure-form">
        <fielset>
          <div class="pure-g">
            <div class="pure-u-1-2">
              <input 
                type="text"
                v-model="username"
                placeholder="Username" />
            </div>
            <div class="pure-u-1-2">
              <input
                type="password"
                v-model="password"
                placeholder="Password" />
            </div>
            <div class="pure-u-1-1">
              <!-- TODO: make link to portal page -->
              <button class="submit pure-button">Submit</button>
            </div>
          </div>
        </fielset>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  data: {
    username: '',
    password: ''
  },
  methods: {
    submit () {
      // const login = { this.username, this.password }
    }
  }
}
</script>

<style>
#main.login {
  align-items: center;
  /*align-content: center;*/
  justify-content: center;
}

#main.login .page {
  width: auto;
}

#main.login .pure-form input {
  width: 100%;
  background: transparent;
  box-shadow: none;
  border: 1px solid #bf9e9e;
  padding: 1.25em;
}

#main.login .pure-form button.submit {
  width: 100%;
  color: white;
  background: transparent;
  /*border: 1px solid #686884;*/
  border: 1px solid #456272;
  text-transform: uppercase;
  padding: 1.25em;
}

#main.login .pure-form .pure-u-1-1, 
#main.login .pure-form .pure-u-1-2 {
  padding: 1em 2em 1em 0;
}
</style>
