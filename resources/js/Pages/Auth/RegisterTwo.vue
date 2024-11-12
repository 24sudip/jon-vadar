<script setup>
import MainLayout from '../../Layouts/MainLayout.vue';
import Container from '../../ComponentsTwo/Container.vue';
import Title from '../../ComponentsTwo/Title.vue';
import TextLink from '../../ComponentsTwo/TextLink.vue';
import InputField from '../../ComponentsTwo/InputField.vue';
import PrimaryBtn from '../../ComponentsTwo/PrimaryBtn.vue';
import ErrorMessage from '../../ComponentsTwo/ErrorMessage.vue';
import { useForm } from '@inertiajs/vue3';

defineOptions({ layout: MainLayout });

const form = useForm({
    name: "",
    email: "",
    password: "",
    password_confirmation: "",
});

const submit = () => {
    form.post(route('register'), {
        onFinish: () => form.reset('password','password_confirmation'),
    });
};
</script>

<template>
    <Head title="- Register" />
    <Container class="w-1/2">
        <div class="mb-8 text-center">
            <Title>Register a new account</Title>
            <p>Already have an account? <TextLink routeName="login" label="Login" /></p>
        </div>

        <!-- Error Messages -->
        <ErrorMessage :errors="form.errors" />

        <form @submit.prevent="submit" class="space-y-6">
            <InputField labelName="Name" icon="id-badge" v-model="form.name" />

            <InputField labelName="Email" type="email" icon="at" v-model="form.email" />

            <InputField labelName="Password" type="password" icon="key" v-model="form.password" />

            <InputField labelName="Confirm Password" type="password" icon="key" v-model="form.password_confirmation" />

            <p class="text-slate-500 text-sm dark:text-slate-400">
                By creating an account you agree to our Terms of Service and Privacy Policy
            </p>

            <PrimaryBtn :disabled="form.processing">Register</PrimaryBtn>
        </form>
    </Container>
</template>
