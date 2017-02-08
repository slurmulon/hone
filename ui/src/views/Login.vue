<template>
  <div class="page">
    <h2>Login</h2>
    <input v-model="username" placeholder="Username" />
    <input v-model="password" placeholder="Password" />
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
