<template>
  <v-card class="overflow-hidden">
      <v-app-bar
        absolute
        color="white"
        elevate-on-scroll
        scroll-target="#scrolling-techniques-7"
      >
        <v-app-bar-nav-icon></v-app-bar-nav-icon>

        <v-toolbar-title>Title</v-toolbar-title>

        <v-spacer></v-spacer>

        <v-btn icon>
          <v-icon>mdi-magnify</v-icon>
        </v-btn>

        <v-btn icon>
          <v-icon>mdi-heart</v-icon>
        </v-btn>

        <v-btn icon>
          <v-icon>mdi-dots-vertical</v-icon>
        </v-btn>
      </v-app-bar>
      <v-sheet
        id="scrolling-techniques-7"
        class="overflow-y-auto"
        max-height="600"
      >
        <v-container>
          <v-row>
            <v-col>
              <div v-for="(post,index) in posts.posts" :key= index>
                <PostList
                  :id = "post.id"
                  :title = "post.title"
                  :description = "post.description"
                />
              </div>
            </v-col>
          </v-row>
        </v-container>
      </v-sheet>
  </v-card>
</template>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { State, Action } from "vuex-class";
import { PostsState } from "../store/types";
import PostList from "@/components/posts/PostList.vue";

const namespace = "posts";

@Component({
  components: {
    PostList,
  }
})
export default class Post extends Vue {
  @State(namespace) posts: PostsState;
  @Action("fetchPosts", { namespace }) fetchPosts: any;

  mounted() {
    this.fetchPosts();
  }
}
</script>
<style lang="scss">
</style>