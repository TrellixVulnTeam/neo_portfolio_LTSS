import { ActionTree } from "vuex";
import { PostsState, RootState, Post } from "@/store/types";
import axios from "axios";

const actions: ActionTree<PostsState, RootState> = {
  fetchPosts: async ({ commit }, posts: Post[]) => {
    await axios.get(axios.defaults.baseURL + "posts").then(res => {
      posts = res.data;
    });
    commit("fetchPosts", posts);
  }
};

export default actions;
