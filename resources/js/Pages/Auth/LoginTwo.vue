<script setup>
import MainLayout from '../../Layouts/MainLayout.vue';
import Container from '../../ComponentsTwo/Container.vue';
import Title from '../../ComponentsTwo/Title.vue';
import TextLink from '../../ComponentsTwo/TextLink.vue';
import InputField from '../../ComponentsTwo/InputField.vue';
import PrimaryBtn from '../../ComponentsTwo/PrimaryBtn.vue';
import ErrorMessage from '../../ComponentsTwo/ErrorMessage.vue';
import SessionMessage from '../../ComponentsTwo/SessionMessage.vue';
import CheckBox from '../../ComponentsTwo/CheckBox.vue';
import { useForm } from '@inertiajs/vue3';

defineOptions({ layout: MainLayout });

const form = useForm({
    email: "",
    password: "",
    remember: null,
});

defineProps({
    status: String,
});

const submit = () => {
    form.post(route('login'), {
        onFinish: () => form.reset('password'),
    });
};
</script>

<template>
    <Head title="- Login" />
    <Container class="w-1/2">
        <div class="mb-8 text-center">
            <Title>Login to your account</Title>
            <p>Need an account? <TextLink routeName="register" label="Register" /></p>
        </div>

        <!-- Error Messages -->
        <ErrorMessage :errors="form.errors" />

        <SessionMessage :status="status" />

        <form @submit.prevent="submit" class="space-y-6">
            <InputField labelName="Email" type="email" icon="at" v-model="form.email" />

            <InputField labelName="Password" type="password" icon="key" v-model="form.password" />

            <div class="flex items-center justify-between">
                <CheckBox name="remember" v-model="form.remember">Remember me</CheckBox>
                <TextLink routeName="password.request" label="Forgot Password?" />
            </div>

            <PrimaryBtn :disabled="form.processing">Login</PrimaryBtn>
        </form>
    </Container>
</template>
