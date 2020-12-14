<template>
  <div>
    {{ posts }}
  </div>
</template>
<script lang="ts">
import Vue from "vue";
import Component from "vue-class-component";
import { State, Action } from "vuex-class";
import { PostsState } from "../store/types";

const namespace = "posts";

@Component({
  components: {
  },
})
export default class Post extends Vue {
  @State(namespace) posts: PostsState;
  @Action("fetchPosts", { namespace }) fetchPosts: any;

  mounted() {
    this.fetchPosts()
  };
}
</script>