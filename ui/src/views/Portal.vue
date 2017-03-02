<template>
  <div id="main" class="portal">
    <div class="page">
      <!-- TODO: break this out into portal-browse or the like -->
      <div class="actions">
        <form class="pure-form pure-g">
          <div class="group dashboards pure-u-1-8">
            <a href="#">
              Dashboard
              <i class="fa fa-angle-down" aria-hidden="true"></i>
            </a>
          </div>
          <div class="group dashboards pure-u-1-8">
            <a href="#">
              Projects
              <i class="fa fa-angle-down" aria-hidden="true"></i>
            </a>
          </div>
          <div class="group dashboards pure-u-1-8">
            <a href="#">
              Boards
              <i class="fa fa-angle-down" aria-hidden="true"></i>
            </a>
          </div>
          <div class="group dashboards pure-u-1-8">
            <a href="#">
              Tags
              <i class="fa fa-angle-down" aria-hidden="true"></i>
            </a>
          </div>
          <div class="group dashboards pure-u-1-8">
            <a href="#">
              Dashboard
              <i class="fa fa-angle-down" aria-hidden="true"></i>
            </a>
          </div>
          <div class="search-input pure-u-2-8">
            <input type="text" class="pure-input-rounded">
          </div>
          <div class="search-go pure-u-1-8">
            <button type="submit" class="pure-button">Search</button>
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
      <!-- <div class="feed pure-g">
        <h2>Feed</h2>
      </div> -->
    </div>

    <div class="feed pure-g">
      <h2>Feed</h2>
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
  margin-left: 150px; /* TODO: remove need for this once flexbox stuff is done; */
  /*padding-left: 2em;
  padding-top: 1em;*/
  /* background: #fff; */

  /*flex: 1 100%;*/ /* TODO: use this once layout is fixed a bit; */
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
  flex-flow: row wrap;
  flex: 1 90%;
  align-content: flex-start;
}

.portal .page > .actions {
  flex: 1 100%;
  height: 5em;
  line-height: 5em;
  border-bottom: 1px solid #333;
}

.portal .page > .actions a {
  display: inline-block;
  width: 100%;
  text-align: center;
  text-decoration: none;
  /*color: #809c9e;*/
  /*color: #baced3;*/
  /*color: #a1b1b5;*/
  color: #aaa;
  border-right: 1px solid #333; /*#5a839b;*/
}

.portal .page > .actions a:hover {
  color: #f5f5f5;
  background: #261E21;
  border-bottom: 2px solid #a4c8dd;
}

.portal .page > .actions .group {
  /*padding-left: 2em;*/
}

.portal .page > .actions .group i {
  padding-left: .5em;
}

.portal .search-input,
.portal .search-go {
  text-align: center;
}

.portal .page > .actions .item, .group, input, select {
  height: 5em;
}

.portal .page > section {
  /*display: flex;
  align-content: stretch;
  justify-content: space-around;*/
  /*align-items: stretch;
  justify-content: space-between;*/

  /*display: flex;*/
  display: inline-flex;
  flex-flow: row wrap;
  justify-content: space-around;
  align-content: stretch;
  flex: 1 100%;
  /*flex: 0 90%;*/
  /*width: 90%;*/
  /*padding-left: 2em;
  padding-top: 1em;*/
}

.portal .panel {
  width: 100%;
  margin: 2em 2em 0 2em;
  padding: 2em;
  border: 1px solid #686884;
}

/* FIXME: better solution is to surround the section and feed with a parent flex container */
.portal .feed {
  /*position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  width: 10%;*/

  /*flex: 1 10%;*/
  flex: 1 12%;
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
  margin: 1em 0;
}
</style>

