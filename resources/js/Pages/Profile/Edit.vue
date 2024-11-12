<script setup>
import MainLayout from '../../Layouts/MainLayout.vue';
import UpdateInfo from './Sections/UpdateInfo.vue';
import UpdatePassword from './Sections/UpdatePassword.vue';
import DeleteAccount from './Sections/DeleteAccount.vue';

defineOptions({ layout: MainLayout });
defineProps({
    user: Object,
    status: String
});
</script>

<template>
    <Head title="- Profile" />
    <UpdateInfo :user="user" :status="status" />
    <UpdatePassword />
    <DeleteAccount />
</template>

