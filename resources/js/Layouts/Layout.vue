<script setup>
// import { Link } from '@inertiajs/vue3'
</script>
<template>
    <div class="">
        <header>
            <nav>
                <div class="space-x-6">
                    <Link :href="route('home')" class="nav-link">Home</Link>
                    <Link :href="route('home.one')" class="nav-link" :class="{'bg-slate-700' : $page.component === 'Home'}">Users</Link>
                </div>
                <div v-if="$page.props.auth.user" class="space-x-6 flex">
                    <img class="avatar" :src="$page.props.auth.user.avatar ? ('storage/' + $page.props.auth.user.avatar) : ('storage/avatars/default.jpg')" alt="">
                    <Link :href="route('dashboard.one')" class="nav-link" :class="{'bg-slate-700' : $page.component === 'Dashboard'}">Old-Dashboard</Link>
                    <Link :href="route('logout.one')" method="post" as="button" type="button" class="nav-link">Old-Logout</Link>
                </div>
                <div v-else class="space-x-6">
                    <Link :href="route('register.one')" class="nav-link" :class="{'bg-slate-700' : $page.component === 'Auth/Register'}">Old-Register</Link>
                    <Link :href="route('login.one')" class="nav-link" :class="{'bg-slate-700' : $page.component === 'Auth/Login'}">Old-Login</Link>
                </div>
            </nav>
        </header>
        <main class="p-4">
            <slot />
        </main>
    </div>
</template>
