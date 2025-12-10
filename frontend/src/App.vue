<script setup>
  import { ref, onMounted } from 'vue';
  import { api } from './services/api';


  const books = ref([]);
  const loading = ref(true);
  const error = ref(null);
  

  onMounted(async () => {
    try {
      console.log('Fetching books from API...');
      const res = await api.get('/books');
      console.log('API Response:', res.data);
      books.value = res.data;
      loading.value = false;
    } catch (err) {
      console.error('Error fetching books:', err);
      error.value = err.message;
      loading.value = false;
    }
  })
</script>

<template>
  <h1>Books</h1>

  <div v-if="loading">Loading...</div>
  <div v-else-if="error" style="color: red;">Error: {{ error }}</div>
  <div v-else-if="books.length === 0">No books found</div>
  <ul v-else>
    <li v-for="book in books" :key="book.id">
      {{ book.title }} by {{ book.author || 'Unknown Author' }}
    </li>
  </ul>
</template>