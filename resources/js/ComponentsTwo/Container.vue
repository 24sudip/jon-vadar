<script setup>
import MainLayout from '../Layouts/MainLayout.vue';

defineOptions({ layout: MainLayout });
</script>

<template>
    <div class="bg-white mx-auto p-8 rounded-lg shadow-lg dark:bg-slate-800">
        <slot />
    </div>
</template>

