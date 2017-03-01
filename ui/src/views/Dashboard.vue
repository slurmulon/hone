<template>
  <div id="main" class="dashboard">
    <div class="page">
      <section>
        <h2>Dashboard</h2>
        <div class="pinned pure-g">
          <h1>Pinned</h1>
        </div>
        <div class="assigned pure-g">
          <h1>Assigned</h1>
        </div>
        <div class="log pure-g">
          <h1>History</h1>
        </div>
      </section>

      <!-- TODO: break out into its own component -->
      <div class="feed pure-g">
        <h2>Feed</h2>
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

<style scoped>
#main {
  margin-left: 150px;
  /*padding-left: 2em;
  padding-top: 1em;*/
  /* background: #fff; */
}

.dashboard .pure-g {
  letter-spacing: 0;
}

.dashboard h1 {
  font-weight: normal;
}

.dashboard .page > section {
  /*display: flex;
  align-content: stretch;
  justify-content: space-around;*/
  /*align-items: stretch;
  justify-content: space-between;*/
  width: 90%;
  padding-left: 2em;
  padding-top: 1em;
}

/* FIXME: better solution is to surround the section and feed with a parent flex container */
.dashboard .feed {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  width: 10%;
  border-left: 1px solid #456272;
}

.dashboard .feed h2 {
  color: #a4c8dd;
  padding-left: 1em;
  width: 100%;
  text-align: center;
}
</style>

