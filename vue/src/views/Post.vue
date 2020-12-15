<template>
  <div>
    <div v-for="(post,index) in posts.posts" :key= index>
      <PostList
        class="mt-10"
        :id = "post.id"
        :title = "post.title"
        :description = "post.description"
      />
    </div>
  </div>
</template>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { State, Action } from "vuex-class";
import { PostsState } from "../store/types";
import PostList from "@/components/posts/PostList.vue"

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