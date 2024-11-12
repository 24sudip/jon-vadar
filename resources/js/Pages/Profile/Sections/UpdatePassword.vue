<script setup>
import Container from '../../../ComponentsTwo/Container.vue';
import Title from '../../../ComponentsTwo/Title.vue';
import InputField from '../../../ComponentsTwo/InputField.vue';
import PrimaryBtn from '../../../ComponentsTwo/PrimaryBtn.vue';
import ErrorMessage from '../../../ComponentsTwo/ErrorMessage.vue';
import { useForm } from '@inertiajs/vue3';

const form = useForm({
    current_password: '',
    password: '',
    password_confirmation: '',
});

const submit = () => {
    form.put(route('profile.password'), {
        onSuccess: () => form.reset(),
        onError: () => form.reset(),
        preserveScroll: true,
    });
};
</script>

<template>
    <Container class="mb-6">
        <div class="mb-6">
            <Title>Update Password</Title>
            <p>Ensure you are using a long random password to stay secure.</p>
        </div>

        <ErrorMessage :errors="form.errors" />

        <form class="space-y-6" @submit.prevent="submit">
            <InputField labelName="Current Password" icon="key" class="w-1/2" type="password" v-model="form.current_password" />

            <InputField labelName="New Password" icon="key" class="w-1/2" type="password" v-model="form.password" />

            <InputField labelName="Confirm New Password" icon="key" class="w-1/2" type="password"
            v-model="form.password_confirmation" />

            <p v-if="form.recentlySuccessful" class="text-green-500 font-medium">Saved!</p>

            <PrimaryBtn :disabled="form.processing">Save</PrimaryBtn>
        </form>
    </Container>
</template>
