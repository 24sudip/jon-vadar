<script setup>
import MainLayout from '../../Layouts/MainLayout.vue';
import Container from '../../ComponentsTwo/Container.vue';
import InputField from '../../ComponentsTwo/InputField.vue';
import PrimaryBtn from '../../ComponentsTwo/PrimaryBtn.vue';
import ErrorMessage from '../../ComponentsTwo/ErrorMessage.vue';
import SessionMessage from '../../ComponentsTwo/SessionMessage.vue';
import { useForm } from '@inertiajs/vue3';

defineOptions({ layout: MainLayout });

const form = useForm({
    email: "",
});

defineProps({ status: String });

const submit = () => {
    form.post(route('password.email'));
};
</script>

<template>
    <Head title="- Forgot Password" />
    <Container class="w-1/2">
        <div class="mb-8 text-center">
            <p>Forgot your password? No Problem. Just let us know your email address and we will email you a password reset link  that will allow you to choose a new one</p>
        </div>

        <!-- Error Messages -->
        <ErrorMessage :errors="form.errors" />

        <SessionMessage :status="status" />

        <form @submit.prevent="submit" class="space-y-6">
            <InputField labelName="Email" type="email" icon="at" v-model="form.email" />

            <PrimaryBtn :disabled="form.processing">Send Password Reset Link</PrimaryBtn>
        </form>
    </Container>
</template>
