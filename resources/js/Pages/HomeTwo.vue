<script setup>
import MainLayout from '../Layouts/MainLayout.vue';
import Card from '../ComponentsTwo/Card.vue';
import PaginationLinkTwo from '../ComponentsTwo/PaginationLinkTwo.vue';
import InputField from '../ComponentsTwo/InputField.vue';
import { router, useForm } from '@inertiajs/vue3';

defineOptions({ layout: MainLayout });

const params = route().params;

const props = defineProps({
    listings: Object,
    searchTerm: String
});

const username = params.user_id ? props.listings.data.find(i => i.user_id === Number(params.user_id)).user.name : null;

const form = useForm({
    search: props.searchTerm,
});

const search = () => {
    router.get(route('home'), {
        search: form.search,
        user_id: params.user_id,
        tag: params.tag
    });
};
</script>

<template>
    <Head title="- Latest Listings" />
    <div class="flex items-center justify-between mb-4">
        <div class="flex items-center gap-2">
            <Link v-if="params.tag" :href="route('home', { ...params, tag: null, page: null })" class="px-2 py-1 rounded-md bg-indigo-500 text-white flex items-center gap-2">
                {{ params.tag }}
                <i class="fa-solid fa-xmark"></i>
            </Link>

            <Link v-if="params.search" :href="route('home', { ...params, search: null, page: null })" class="px-2 py-1 rounded-md bg-indigo-500 text-white flex items-center gap-2">
                {{ params.search }}
                <i class="fa-solid fa-xmark"></i>
            </Link>

            <Link v-if="params.user_id" :href="route('home', { ...params, user_id: null, page: null })" class="px-2 py-1 rounded-md bg-indigo-500 text-white flex items-center gap-2">
                {{ username }}
                <i class="fa-solid fa-xmark"></i>
            </Link>
        </div>
        <div class="w-1/4">
            <form @submit.prevent="search">
                <InputField type="search" labelName="" icon="magnifying-glass" placeholder="Search..." v-model="form.search" />
            </form>
        </div>
    </div>
    <div v-if="Object.keys(listings.data).length">
        <div class="grid grid-cols-3 gap-4">
            <div v-for="listing in listings.data" :key="listing.id">
                <Card :listing="listing" />
            </div>
        </div>
        <div class="mt-8">
            <PaginationLinkTwo :paginator="listings" />
        </div>
    </div>
    <div v-else>There are no listings</div>
</template>

