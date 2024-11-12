<script setup>
import MainLayout from '../../Layouts/MainLayout.vue';
import Container from '../../ComponentsTwo/Container.vue';
import Title from '../../ComponentsTwo/Title.vue';
import InputField from '../../ComponentsTwo/InputField.vue';
import PrimaryBtn from '../../ComponentsTwo/PrimaryBtn.vue';
import ErrorMessage from '../../ComponentsTwo/ErrorMessage.vue';
import { useForm } from '@inertiajs/vue3';

defineOptions({ layout: MainLayout });

const props = defineProps({
    token: String,
    email: String,
});

const form = useForm({
    token: props.token,
    email: props.email,
    password: "",
    password_confirmation: "",
});

const submit = () => {
    form.post(route('password.update'), {
        onFinish: () => form.reset('password','password_confirmation'),
    });
};
</script>

<template>
    <Head title="- Reset Password" />
    <Container class="w-1/2">
        <div class="mb-8 text-center">
            <Title>Enter your new password</Title>
        </div>

        <!-- Error Messages -->
        <ErrorMessage :errors="form.errors" />

        <form @submit.prevent="submit" class="space-y-6">
            <InputField labelName="Email" type="email" icon="at" v-model="form.email" />

            <InputField labelName="Password" type="password" icon="key" v-model="form.password" />

            <InputField labelName="Confirm Password" type="password" icon="key" v-model="form.password_confirmation" />

            <PrimaryBtn :disabled="form.processing">Reset Password</PrimaryBtn>
        </form>
    </Container>
</template>
