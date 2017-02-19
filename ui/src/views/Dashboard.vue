<template>
  <div id="main" class="dashboard">
    <div class="page">
      <h2>Dashboard</h2>
      <div class="assigned pure-g">
        <h1>Assigned</h1>
      </div>
      <div class="feed pure-g">
        <h1>Feed</h1>
      </div>
      <div class="log pure-g">
        <h1>History</h1>
      </div>
    </div>
  </div>
</template>

<script>
// import Feed from '../components/Feed.vue

export default {
  data: {
    projects: [],
  },
  components: {
    // Feed
  }
}
</script>

<style>
#main .dashboard {
  background: #fff;
}
</style>

