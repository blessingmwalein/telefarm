<template>
    <app-layout title="Register">
        <div class="breadcrumb">
            <div class="container">
                <div class="breadcrumb-inner">
                    <ul class="list-inline list-unstyled">
                        <li><a href="/">Home</a></li>
                        <li class="active">Create A Shop</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="body-content outer-top-ts">
            <div class="container">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="sign-in-page">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 sign-in">
                                    <h4 class="">Create a Shop</h4>
                                    <form
                                        class="register-form outer-top-xs"
                                        role="form"
                                        @submit.prevent="submit"
                                    >
                                        <div class="form-group">
                                            <label
                                                class="info-title"
                                                for="exampleInputEmail1"
                                                >Shop Name <span>*</span></label
                                            >
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="exampleInputEmail1"
                                                v-model="form.name"

                                                autofocus
                                            />
                                            <small v-if="form.errors.name"
                                                >{{form.errors.name}}</small
                                            >
                                        </div>
                                        <div class="form-group">
                                            <label
                                                class="info-title"
                                                for="exampleInputEmail1"
                                                >Shop Description<span
                                                    >*</span
                                                ></label
                                            >
                                            <textarea
                                                class="form-control"
                                                rows="3"
                                                v-model="form.description"
                                            >
                                            </textarea>
                                            <small
                                                v-if="form.errors.description"
                                                >{{form.errors.description}}</small
                                            >
                                        </div>
                                        <div class="form-group">
                                            <label
                                                class="info-title"
                                                for="exampleInputEmail1"
                                                >Choose Membership<span
                                                    >*</span
                                                ></label
                                            >
                                            <select
                                                class="form-control"
                                                v-model="form.membership_id"
                                            >
                                                <option
                                                    :value="membership.id"
                                                    v-for="membership in memberships"
                                                    :key="membership.id"
                                                >
                                                    {{ membership.name }}(${{
                                                        membership.cost
                                                    }})
                                                </option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label
                                                class="info-title"
                                                for="exampleInputPassword1"
                                                >Image <span></span
                                            ></label>
                                            <input
                                                type="file"
                                                accept="image/*"
                                                class="form-control"
                                                @input="
                                                    form.image =
                                                        $event.target.files[0]
                                                "
                                            />
                                        </div>

                                        <button
                                            type="submit"
                                            class="btn-upper btn btn-primary checkout-page-button"
                                            :class="{
                                                'opacity-25': form.processing,
                                            }"
                                            :disabled="form.processing"
                                        >
                                            Create Shop
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </div>

            <footer-nav></footer-nav>
        </div>
    </app-layout>
</template>

<script>
import JetAuthenticationCard from "@/Jetstream/AuthenticationCard.vue";
import JetAuthenticationCardLogo from "@/Jetstream/AuthenticationCardLogo.vue";
import JetButton from "@/Jetstream/Button.vue";
import JetInput from "@/Jetstream/Input.vue";
import JetCheckbox from "@/Jetstream/Checkbox.vue";
import JetLabel from "@/Jetstream/Label.vue";
import JetValidationErrors from "@/Jetstream/ValidationErrors.vue";
import { Head, Link } from "@inertiajs/inertia-vue3";
import AppLayout from "@/Layouts/AppLayout.vue";
import FooterNav from "@/Components/Navs/Footer.vue";
import axios from "axios";

export default {
    components: {
        Head,
        JetAuthenticationCard,
        JetAuthenticationCardLogo,
        JetButton,
        JetInput,
        JetCheckbox,
        JetLabel,
        JetValidationErrors,
        AppLayout,
        Link,
        FooterNav,
    },
    props: ["memberships"],

    data() {
        return {
            loading: false,
            form: this.$inertia.form({
                name: "",
                description: "",
                image: "",
                membership_id: "",
            }),
            message: "",
        };
    },
    mounted() {
        console.log(this.form.name);
    },

    methods: {
        submit() {
            this.form.post("/shop/create").then((finish) => {});
        },

        uploadImage(event) {
            this.form.image = event.target.files[0];
            console.log(this.form.image);
        },
    },
};
</script>
