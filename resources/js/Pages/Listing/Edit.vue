<script setup>
import Container from '../../ComponentsTwo/Container.vue';
import Title from '../../ComponentsTwo/Title.vue';
import InputField from '../../ComponentsTwo/InputField.vue';
import ErrorMessage from '../../ComponentsTwo/ErrorMessage.vue';
import PrimaryBtn from '../../ComponentsTwo/PrimaryBtn.vue';
import TextArea from '../../ComponentsTwo/TextArea.vue';
import ImageUpload from '../../ComponentsTwo/ImageUpload.vue';
import MainLayout from '../../Layouts/MainLayout.vue';
import { useForm } from '@inertiajs/vue3';

defineOptions({ layout: MainLayout });

const props = defineProps({
    listing: Object
});

const form = useForm({
    title: props.listing.title,
    description: props.listing.description,
    tags: props.listing.tags,
    email: props.listing.email,
    link: props.listing.link,
    image: null,
    _method: 'PUT'
});
</script>

<template>
    <Head title="- Edit Listing" />
    <Container>
        <div class="mb-6">
            <Title>Edit your listing</Title>
        </div>

        <ErrorMessage :errors="form.errors" />

        <form @submit.prevent="form.post(route('listing.update', listing.id))" class="grid grid-cols-2 gap-6">
            <div class="space-y-6">
                <InputField labelName="Title" icon="heading" placeholder="My new listing" v-model="form.title" />

                <InputField labelName="Tags (separate with comma)" icon="tags" placeholder="one, two, three"
                v-model="form.tags" />

                <TextArea labelName="Description" icon="newspaper" placeholder="This is my listing description"
                v-model="form.description" />
            </div>

            <div class="space-y-6">
                <InputField labelName="Email" icon="at" placeholder="example@email.com" v-model="form.email" />

                <InputField labelName="External Link" icon="up-right-from-square" placeholder="https://example.com"
                v-model="form.link" />

                <ImageUpload @image="(e) => form.image = e" :listingImage="listing.image" />
            </div>

            <div class="">
                <PrimaryBtn :disabled="form.processing">Update</PrimaryBtn>
            </div>
        </form>
    </Container>
</template>

