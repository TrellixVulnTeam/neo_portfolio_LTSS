<template>
  <div>
    <v-card>
      <v-card-title class="mb-12">
        {{ id }}: {{ title }}
      </v-card-title>
      <v-card-text>
        {{ description }}
      </v-card-text>
    </v-card>
  </div>
</template>
<script lang="ts">
import { Component, Prop, Vue } from "vue-property-decorator";

@Component
export default class PostList extends Vue {
  @Prop({ type: Number })
  id: number
  @Prop({ type: String })
  title: string
  @Prop({ type: String })
  description: string
}
</script>