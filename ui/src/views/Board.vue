<template>
<!-- TODO: might be better to re-do this as `display: table` to easily allow sticky menus -->
<!-- WARN: introduces an issue where zooming past 125% in Chrome causes the settings side bar to disappear. Stems from .area (try commenting it out. works at 3e8c7c) -->
<div id="main" class="board">
  <div class="area">
    <div class="actions">
      <!-- TODO: flexify this so the middle li can be way larger -->
      <ul>
        <li class="info breadcrumb">Project > Board</li>
        <li class="controls">
          <div class="group">
            <a href><i class="fa fa-list-alt" aria-hidden="true"></i></a>
            <a href><i class="fa fa-table" aria-hidden="true"></i></a>
            <a href><i class="fa fa-sun-o" aria-hidden="true"></i></a>
            <a href><i class="fa fa-moon-o" aria-hidden="true"></i></a>
          </div>
          <div class="group">
            <a href><i class="fa fa-undo" aria-hidden="true"></i></a>
            <a href><i class="fa fa-repeat" aria-hidden="true"></i></a>
          </div>
          <div class="group">
            <a href><i class="fa fa-crosshairs" aria-hidden="true"></i></a>
            <a href><i class="fa fa-hand-pointer-o" aria-hidden="true"></i></a>
            <a href><i class="fa fa-hand-scissors-o" aria-hidden="true"></i></a>
            <a href><i class="fa fa-clone" aria-hidden="true"></i></a>
            <a href><i class="fa fa-clipboard" aria-hidden="true"></i></a>
            <a href><i class="fa fa-trash-o" aria-hidden="true"></i></a>
            <a href><i class="fa fa-tag" aria-hidden="true"></i></a>
            <a href><i class="fa fa-download" aria-hidden="true"></i></a>
          </div>
          <!-- <div class="group">
            <i class="fa fa-star" aria-hidden="true"></i> &nbsp; &nbsp; Bookmarks
          </div> -->
        </li>
        <li class="info notifications">
          <i class="fa fa-feed" style="color: #9feae1;" aria-hidden="true"></i> 2
        </li>
      </ul>
    </div>

    <div class="board noselect">
      <!-- <%= for stage <- ["Review", "Backlog", "Developing", "Dev Complete", "PR Open", "Merged", "Testing", "Closed"] do %> -->
      <div class="stage" v-for="stage in stages">
        <div class="label">
          <%# <h3>Product Review</h3> %>
          <h3><%= stage %></h3>
        </div>
        <!-- <%= for _id <- 1..Enum.random(1..10) do %> -->
        <div class="unit" v-for="unit in randomUnits()">
          <div class="banner">
            <div class="id">#{{ randomTicketNumber() }}</div>
            <div class="controls">
              <a href>
                <i class="fa fa-square-o" aria-hidden="true"></i>
              </a>
              <a href>
                <i class="fa fa-edit" aria-hidden="true"></i>
              </a>
              <a href>
                <i class="fa fa-trash" aria-hidden="true"></i>
              </a>
            </div>
          </div>
          <div class="title">Lorem Ipsum Worksem</div>
          <div class="assignee">
            <img src="https://api.adorable.io/avatars/285/hone-123 %>@tickets.png" />
          </div>
          <div class="badges">
            <div class="badge">5</div>
            <div class="badge">B</div>
          </div>
        </div>
        <!-- <% end %> -->
      </div>
      <!-- <% end %> -->
    </div>
  </div>

  <div class="settings">
    <div class="pure-form pure-form-stacked">
      <div class="banner">
        <h3><i class="fa fa-filter" aria-hidden="true"></i></h3>
      </div>
      <fieldset>
        <%# <div class="pure-g">
          <legend>Settings</legend> %>
          <%# <div class="pure-u-1-2">
            <label for="board">Board</label>
          </div>
          <div class="pure-u-2-2">
            <select id="board">
              <option>Foo</option>
              <option>Bar</option>
              <option>Baz</option>
            </select>
          </div>
          <div class="pure-u-1-2">
            <label for="assignee">Assignee</label>
          </div>
          <div class="pure-u-2-2">
            <select id="assignee">
              <option>None</option>
              <option>Bob</option>
              <option>Darla</option>
            </select>
          </div>
          <div class="pure-u-1-2">
            <label for="milestone">Milestone</label>
          </div>
          <div class="pure-u-2-2">
            <select id="milestone">
              <option>None</option>
              <option>1.15.17</option>
              <option>2.1.17</option>
            </select>
          </div>
        </div> %>
        <label for="project">
          <i class="fa fa-building" aria-hidden="true"></i>
          <span class="name">Project</span>
        </label>
        <select id="project">
          <option>Project A</option>
          <option>Project B</option>
          <option>Project C</option>
        </select>

        <label for="board">
          <i class="fa fa-thumb-tack" aria-hidden="true"></i>
          <span class="name">Board</span>
        </label>
        <select id="board">
          <option>Foo</option>
          <option>Bar</option>
          <option>Baz</option>
        </select>

        <label for="stages">
          <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
          <span class="name">Stages</span>
        </label>
        <select id="stages">
          <option>Any</option>
          <option>Backlog</option>
          <option>Developing</option>
        </select>

        <label for="levels">
          <i class="fa fa-cube" aria-hidden="true"></i>
          <span class="name">Level</span>
        </label>
        <select id="levels">
          <option>Any</option>
          <option>Epic</option>
          <option>Story</option>
          <option>Task</option>
        </select>

        <label for="milestone">
          <i class="fa fa-flag-checkered" aria-hidden="true"></i>
          <span class="name">Milestones</span>
        </label>
        <select id="milestone">
          <option>Any</option>
          <option>None</option>
          <option>1.15.17</option>
          <option>2.1.17</option>
        </select>

        <label for="assignee">
          <i class="fa fa-user-circle-o" aria-hidden="true"></i>
          <span class="name">Assignees</span>
        </label>
        <select id="assignee">
          <option>Any</option>
          <option>None</option>
          <option>Bob</option>
          <option>Darla</option>
        </select>

        <hr/>

        <label for="keywords">
          <i class="fa fa-key" aria-hidden="true"></i>
          <span class="name">Keywords</span>
        </label>
        <input id="keywords" type="text" />

        <label for="tags">
          <i class="fa fa-tags" aria-hidden="true"></i>
          <span class="name">Tags</span>
        </label>
        <input id="tags" type="text" />
      </fieldset>
    </div>
  </div>
</div>
</template>

<script>
export default {
  data: {
    stages: ['Review', 'Backlog', 'Developing', 'Dev Complete', 'PR Open', 'Merged', 'Testing', 'Closed']
  },
  methods: {
    randomTicketNumber () {
      return Math.random() * 250
    },

    randomUnits () {
      return Math.random() * 10
    }
  }
}
</script>
