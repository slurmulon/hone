import Vue from 'vue'
import VueResource from 'vue-resource'

Vue.use(VueResource)

const http = {
  root: '/v1/api/',
  headers: {
    Authorization: 'Basic YXBpOnBhc3N3b3Jk'
  }
}

export default http
