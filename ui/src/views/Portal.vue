<template>
  <div id="main" class="portal">
    <div class="page">
      <!-- TODO break this out into portal-browse or the like -->
      <div class="actions pure-form">
        <!-- <div class="action group dashboards">
          <a href="#">
            Dashboard
            <i class="fa fa-angle-down" aria-hidden="true"></i>
          </a>
        </div> -->
        <div class="action group projects">
          <a href="#">
            Projects
            <i class="fa fa-angle-down" aria-hidden="true"></i>
          </a>
        </div>
        <div class="action group boards">
          <a href="#">
            Boards
            <i class="fa fa-angle-down" aria-hidden="true"></i>
          </a>
        </div>
        <div class="action group tags">
          <a href="#">
            Tags
            <i class="fa fa-angle-down" aria-hidden="true"></i>
          </a>
        </div>
        <div class="action group sprints">
          <a href="#">
            Sprints
            <i class="fa fa-angle-down" aria-hidden="true"></i>
          </a>
        </div>
        <div class="action group search-input">
          <input type="text" class="pure-input-rounded" />
        </div>
        <div class="action group search-go">
          <button type="submit" class="pure-button">
            <i class="fa fa-search" aria-hidden="true"></i>
          </button>
        </div>
        <div class="action group theme">
          <i class="fa fa-moon-o" aria-hidden="true"></i>
        </div>
      </div>

      <!-- TODO make these generic so that people can just add
      arbitrary boxes and specify a title -->
      <section>
        <div class="pinned panel pure-g">
          <h2>Pinned</h2>
          <div class="controls">
            <a href><i class="fa fa-cogs"></i></a>
            <a href><i class="fa fa-trash"></i></a>
          </div>
          <div class="list">
            <a href class="item">
              <i class="fa fa-cubes"></i>
              <span class="title">Project</span>
              <i class=" fa fa-star"></i>
            </a>
            <a class="item">
              <i class="fa fa-cube"></i>
              <span class="title">Board</span>
              <i class=" fa fa-star"></i>
            </a>
            <a class="item">
              <i class="fa fa-ticket"></i>
              <span class="title">Unit</span>
              <i class=" fa fa-star"></i>
            </a>
          </div>
        </div>
        <div class="assigned panel pure-g">
          <h2>Assigned</h2>
          <div class="controls">
            <a href><i class="fa fa-cogs"></i></a>
            <a href><i class="fa fa-trash"></i></a>
          </div>
        </div>
        <div class="log panel pure-g">
          <h2>History</h2>
          <div class="controls">
            <a href><i class="fa fa-cogs"></i></a>
            <a href><i class="fa fa-trash"></i></a>
          </div>
        </div>
      </section>
    </div>

    <div class="feed">
      <h2>
        <i class="fa fa-feed" aria-hidden="true"></i>
      </h2>
      <div class="feed empty">
        <i>No recent activity</i>
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

<style lang="stylus" scoped>
#main
  margin-left 150px /* TODO remove need for this once flexbox stuff is done */
  //padding-left 2em
  //padding-top 1em
  //background #fff

  /*flex 1 100% /* TODO use this once layout is fixed a bit */

#layout
  display flex
  align-items stretch
  background #261E25
  height 100%

#layout header
  flex 0 10%

.portal .pure-g
  letter-spacing 0


.portal h1
  font-weight normal

.portal h2
  margin 0

.portal .page
  display flex
  flex-flow row wrap
  flex 1 90%
  align-content flex-start
  /*overflow-y scroll*/

  & > .actions
    display inline-flex
    flex-flow row nowrap
    flex 1 100%
    line-height 5em
    height 5em
    border-bottom 1px solid #333

    a
      display inline-block
      width 100%
      text-align center
      text-decoration none
      white-space nowrap
      /*color #809c9e*/
      /*color #baced3*/
      color #a1b1b5
      /*color #aaa*/
      /*color #525252*/
      border-right 1px solid #333 /*#5a839b*/
      padding-left 1em

      &:hover
        color #f5f5f5
        background #261E21
        border-bottom 2px solid #a4c8dd

    i
      padding-right .5em

    input
      width 100%
      border-top none

    .group
      flex 1

      i
        padding-left .5em

    .search-input
      flex 3

      & > input
        padding 0 1.5em
        
    .item, .group, input, select
      height 5em
      
  section
    /*display flex
    align-content stretch
    justify-content space-around*/
    /*align-items stretch
    justify-content space-between*/

    /*display flex*/
    display inline-flex
    flex-flow row wrap
    justify-content space-around
    align-content stretch
    flex 1 100%
    /*flex 0 90%*/
    /*width 90%*/
    /*padding-left 2em
    padding-top 1em*/

.portal .search-input,
.portal .search-go
  text-align center

.portal .panel
  position relative
  width 100%
  padding 2em
  /*border 1px solid #686884*/

  .controls
    position absolute
    right 2em

    a
      /*color pink*/ /* actually looks good */
      color #a4c8dd
      opacity 0.25
      margin-right 1em
      
      &:hover
        opacity 0.75
        
  & > .list
    width 100%
    margin-top 1em

    .item
      display inline-flex
      justify-content space-between
      justify-content flex-start
      width 100%
      padding 1em
      text-decoration none
      color #777
      border-bottom 1px solid #333
      
      &:hover
        background #2d272d
        
      & > .title
        flex 2

      i
        padding-right 1em
        flex 5% 0
        
        &:last-of-type
          text-align right

  &.pinned
    flex 100%

  &.assigned, &.log
    flex 2

/* FIXME better solution is to surround the section and feed with a parent flex container */
.portal .feed
  /*flex 1 10%*/
  flex 1 12%
  /*border-left 1px solid #456272*/
  border-left 1px solid #686884
  background #2b222a
  
  &.empty
    height calc(100% - 100px)
    display flex
    justify-content center
    align-items center
    margin 0 auto
    padding 1em
    border-left none
    text-align center
    opacity 0.25

  h2
    /*color #a4c8dd*/
    color #686884
    width 100%
    padding 1em 0
    height 100px
    text-align center
    border-bottom 1px solid #333
</style>

