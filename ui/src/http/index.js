import Vue from 'vue'
import VueResource from 'vue-resource'

Vue.use(VueResource)

export default http {
  root: '/v1/api/',
  headers: {
    Authorization: 'Basic YXBpOnBhc3N3b3Jk'
  }
}