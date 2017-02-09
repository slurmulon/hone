import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home'
import Login from '../views/Login'
// import SignUp from '../views/SignUp'

Vue.use(Router)

export default new Router({
  mode: 'hash',
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/login',
      component: Login
    }
    // {
    //   path: '/project/:id',
    //   component: Project
    // },
    // {
    //   path: '/board/:id',
    //   component: Board
    // }
  ]
})

