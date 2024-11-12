<script setup>
import MainLayout from '../../Layouts/MainLayout.vue';
import Container from '../../ComponentsTwo/Container.vue';
import PrimaryBtn from '../../ComponentsTwo/PrimaryBtn.vue';
import SessionMessage from '../../ComponentsTwo/SessionMessage.vue';
import { useForm } from '@inertiajs/vue3';

defineOptions({ layout: MainLayout });

const form = useForm({});

defineProps({
    status: String,
});

const submit = () => {
    form.post(route('verification.send'));
};
</script>

<template>
    <Head title="- Email Verification" />
    <Container class="w-1/2">
        <div class="mb-8">
            <p>
                Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn't receive the email, we will gladly send you another.
            </p>
        </div>

        <SessionMessage :status="status" />

        <form @submit.prevent="submit">
            <PrimaryBtn :disabled="form.processing">Resend Verification Email</PrimaryBtn>
        </form>
    </Container>
</template>
