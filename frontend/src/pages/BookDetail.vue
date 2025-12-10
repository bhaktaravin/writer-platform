<script setup>
import { ref, onMounted } from "vue";
import { useRoute } from "vue-router";
import { api } from "../services/api";

const route = useRoute();
const book = ref(null);
const chapters = ref([]);

onMounted(async () => {
  try {
    const bookRes = await api.get(`/books/${route.params.id}`);
    book.value = bookRes.data;

    const chaptersRes = await api.get(`/books/${route.params.id}/chapters`);
    chapters.value = chaptersRes.data;
  } catch (err) {
    console.error("Error fetching book details:", err);
  }
});
</script>

<template>
  <div v-if="book">
    <h1>{{ book.title }}</h1>
    <p>{{ book.description }}</p>

    <h2>Chapters</h2>
    <ul>
      <li v-for="chapter in chapters" :key="chapter.id">{{ chapter.title }}</li>
    </ul>
  </div>
</template>
    