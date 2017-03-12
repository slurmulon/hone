<template>
  <!-- TODO: user vs. company forms -->
  <div id="main" class="register">
    <div class="page">
      <legend><h2>Create Account</h2></legend>
      <form class="pure-form">
        <fielset>
          <div class="pure-g">
            <div class="pure-u-1-1">
              <input
                type="text"
                v-model="username"
                placeholder="Username"
                tabindex="1" />
            </div>
            <div class="pure-u-1-1">
              <input
                type="password"
                v-model="password"
                placeholder="Password" 
                tabindex="2" />
            </div>
            <div class="pure-u-1-1">
              <input
                type="text"
                v-model="email"
                placeholder="Email"
                tabindex="3" />
            </div>
            <div class="pure-u-1-1">
              <!-- TODO: make link to portal page -->
              <button class="submit pure-button">Submit</button>
            </div>
            <div class="pure-u-1-1">
              <!-- <input id="keep-login" type="checkbox" />
              <label for="keep-login">
                Keep me logged in
              </label> -->
              <!-- <i class="fa fa-ambulance" aria-hidden="true"></i> -->
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

<style lang="stylus" scoped>
.register
  align-items center
  /*align-content center*/
  justify-content center

  .page
    width auto

  .pure-form
    input
      width 100%
      background transparent
      box-shadow none
      /*border 1px solid #bf9e9e*/
      border 1px solid #A4C8DD
      border-radius 0
      padding 1.25em

    button.submit
      width 100%
      color white
      background transparent
      /*border 1px solid #686884*/
      background #382c36
      /*border 1px solid #456272*/
      border 1px solid #A4C8DD
      border-radius 0
      text-transform uppercase
      padding 1.25em
      transition all 0.5s ease

      &:hover
        /*border: 1px solid #A4C8DD*/
        border 1px solid #fff

    & .pure-u-1-1, & .pure-u-1-2
      padding 1em 2em 1em 0
</style>
