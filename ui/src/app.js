import Vue from 'vue'
import { sync } from 'vuex-router-sync'
import App from './components/App'
// import Layout from './components/Layout'
import http from './http'
import router from './router'
import store from './store'
import './styles'

sync(store, router)

const app = new Vue({
  http,
  router,
  store,
  ...App
  // ...Layout
})

export { app, router, store }

