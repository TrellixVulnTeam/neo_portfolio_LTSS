export interface RootState {
  version: string;
}

export interface PostsState {
  posts: Post[];
}

export interface Post {
  id: string;
  title: string;
  description: string;
}
