<template>
  <div id="main" class="portal">
    <div class="page">
      <div class="actions">
        <form class="pure-form pure-g">
          <div class="pure-u-1-8">
            <input class="pure-input-1" type="text" placeholder="Dashboard"/>
          </div>
          <div class="pure-u-1-8">
            <input class="pure-input-1" type="text" placeholder="Board"/>
          </div>
          <div class="pure-u-1-8">
            <input class="pure-input-1" type="text" placeholder="Project"/>
          </div>
        </form>
      </div>
      <section>
        <div class="pinned panel pure-g">
          <h2>Pinned</h2>
        </div>
        <div class="assigned panel pure-g">
          <h2>Assigned</h2>
        </div>
        <div class="log panel pure-g">
          <h2>History</h2>
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
  /*margin-left: 150px;*/
  /*padding-left: 2em;
  padding-top: 1em;*/
  /* background: #fff; */
}

#layout {
  display: flex;
  align-items: stretch;
  background: #261E25;
  height: 100%;
}

#layout header {
  flex: 0 10%;
}

.portal .pure-g {
  letter-spacing: 0;
}

.portal h1 {
  font-weight: normal;
}

.portal .page {
  display: flex;
  flex-flow: row-wrap;
  flex: 1 90%;
}

.portal .page > .actions {
  flex: 1 100%;
  height: 5em;
  line-height: 5em;
  border-bottom: 1px solid #333;
}

.portal .page > .actions input, select {
  height: 5em;
}

.portal .page > section {
  /*display: flex;
  align-content: stretch;
  justify-content: space-around;*/
  /*align-items: stretch;
  justify-content: space-between;*/
  display: flex;
  flex-flow: row wrap;
  justify-content: space-around;
  align-content: stretch;
  width: 90%;
  /*padding-left: 2em;
  padding-top: 1em;*/
}

.portal .panel {
  border: 1px solid #686884;
  width: 100%;
}

/* FIXME: better solution is to surround the section and feed with a parent flex container */
.portal .feed {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  width: 10%;
  /*border-left: 1px solid #456272;*/
  border-left: 1px solid #686884;
  background: #2b222a;
}

.portal .feed h2 {
  /*color: #a4c8dd;*/
  color: #686884;
  /*padding-left: 1em;*/
  width: 100%;
  text-align: center;
  margin: 0;
}
</style>

