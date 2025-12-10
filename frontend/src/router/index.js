import { createRouter, createWebHistory} from 'vue-router';
import BookList from '../pages/BookList.vue';
import BookDetail from '../pages/BookDetail.vue';

const routes = [
    {
        path: '/',
        name: 'BookList',
        component: BookList
    },
    { 
        path: '/books/:id',
        name: 'BookDetail',
        component: BookDetail,
        props: true
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes
});

export default router;