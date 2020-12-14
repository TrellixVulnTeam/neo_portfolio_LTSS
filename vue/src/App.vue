<template>
  <div id="app">
    {{ posts }}
    <img alt="Vue logo" src="./assets/logo.png" />
    <HelloWorld msg="Welcome to Your Vue.js + TypeScript App やいやい!!" />
  </div>
</template>

<script lang="ts">
import Vue from "vue";
import Component from "vue-class-component";
import HelloWorld from "./components/HelloWorld.vue";
import { State, Action } from "vuex-class";
import { PostsState } from "./store/types";

const namespace = "posts";

@Component({
  components: {
    HelloWorld
  }
})
export default class App extends Vue {
  @State(namespace) posts: PostsState;
  @Action("fetchPosts", { namespace }) fetchPosts: any;

  mounted() {
    this.fetchPosts()
  };
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
