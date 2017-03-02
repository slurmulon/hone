import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home'
import Login from '../views/Login'
import Register from '../views/Register'
import Portal from '../views/Portal'
// FIXME: rename these to HomeHeader and DashHeader respectively
import HomeMenu from '../components/home/Menu'
import PortalMenu from '../components/portal/Menu'

Vue.use(Router)

export default new Router({
  mode: 'hash',
  routes: [
    {
      path: '/',
      name: 'home',
      // component: Home
      components: {
        default: Home,
        menu: HomeMenu
      }
    },
    {
      path: '/login',
      // component: Login
      components: {
        default: Login,
        menu: HomeMenu
      }
    },
    {
      path: '/register',
      // component: Register
      components: {
        default: Register,
        menu: HomeMenu
      }
    },
    {
      path: '/portal',
      components: {
        default: Portal,
        menu: PortalMenu
      }
      // data: {
      //   'menuClass': {
      //     'dashboard-menu': true
      //   }
      // }
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

