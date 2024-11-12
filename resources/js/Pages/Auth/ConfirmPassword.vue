<script setup>
import MainLayout from '../../Layouts/MainLayout.vue';
import Container from '../../ComponentsTwo/Container.vue';
import InputField from '../../ComponentsTwo/InputField.vue';
import PrimaryBtn from '../../ComponentsTwo/PrimaryBtn.vue';
import ErrorMessage from '../../ComponentsTwo/ErrorMessage.vue';
import { useForm } from '@inertiajs/vue3';

defineOptions({ layout: MainLayout });

const form = useForm({
    password: "",
});

const submit = () => {
    form.post(route('password.confirm'), {
        onFinish: () => form.reset(),
    });
};
</script>

<template>
    <Head title="- Password Confirmation" />
    <Container class="w-1/2">
        <div class="mb-8 text-center">
            <p>This is a secure area of the application. Please confirm your password before continuing</p>
        </div>

        <!-- Error Messages -->
        <ErrorMessage :errors="form.errors" />

        <form @submit.prevent="submit" class="space-y-6">
            <InputField labelName="Password" type="password" icon="key" v-model="form.password" />

            <PrimaryBtn :disabled="form.processing">Confirm</PrimaryBtn>
        </form>
    </Container>
</template>
