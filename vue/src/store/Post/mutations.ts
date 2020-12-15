import { MutationTree } from "vuex";
import { PostsState, Post } from "@/store/types";

const mutations: MutationTree<PostsState> = {
  fetchPosts: (state, posts: Post[]) => {
    console.log(posts);
    state.posts = posts;
  }
};

export default mutations;
