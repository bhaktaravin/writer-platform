<script setup>
import { ref, onMounted } from "vue";
import { api } from "../services/api";

const books = ref([]);

onMounted(async () => {
  try {
    const res = await api.get("/books");
    books.value = res.data;
  } catch (err) {
    console.error("Error fetching books:", err);
  }
});
</script>

<template>
  <h1>Books</h1>
  <ul>
    <li v-for="book in books" :key="book.id">
      <router-link :to="`/books/${book.id}`">{{ book.title }}</router-link>
    </li>
  </ul>
</template>
