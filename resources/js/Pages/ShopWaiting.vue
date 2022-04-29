<template>
    <app-layout title="Register">
        <div class="breadcrumb">
            <div class="container">
                <div class="breadcrumb-inner">
                    <ul class="list-inline list-unstyled">
                        <li><a href="/">Home</a></li>
                        <li class="active">Waiting Shop Approval</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="body-content outer-top-ts">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="terms-conditions-page">
                            <div class="row">
                                <div class="col-md-12 terms-conditions">
                                    <h2 class="heading-title">
                                        Shop Creation Terms and Conditions
                                    </h2>
                                    <div class="">
                                        <h3>Application has Been Received</h3>
                                        <ol>
                                            <li>
                                                Lorem ipsum dolor sit amet,
                                                consectetur adipiscing elit.
                                                Etiam quis diam erat. Duis velit
                                                lectus, posuere a blandit sit
                                                amet, tempor at lorem. Donec
                                                ultricies, lorem sed ultrices
                                                interdum.
                                            </li>
                                            <li>
                                                Lorem ipsum dolor sit amet,
                                                consectetur adipiscing elit.
                                                Etiam quis diam erat. Duis velit
                                                lectus, posuere a blandit sit
                                                amet, tempor at lorem. Donec
                                                ultricies, lorem sed ultrices
                                                interdum. Lorem ipsum dolor sit
                                                amet, consectetur adipiscing
                                                elit.
                                            </li>
                                            <li>
                                                Lorem ipsum dolor sit amet,
                                                consectetur adipiscing elit.
                                                Etiam quis diam erat. Duis velit
                                                lectus, posuere a blandit sit
                                                amet, tempor at lorem. Donec
                                                ultricies, lorem sed ultrices
                                                interdum. Lorem ipsum dolor sit
                                                amet, consectetur adipiscing
                                                elit.
                                            </li>
                                            <li>
                                                Lorem ipsum dolor sit amet,
                                                consectetur adipiscing elit.
                                                Etiam quis diam erat. Duis velit
                                                lectus, posuere a blandit sit
                                                amet, tempor at lorem. Donec
                                                ultricies, lorem sed ultrices
                                                interdum. Lorem ipsum dolor sit
                                                amet, consectetur adipiscing
                                                elit.
                                            </li>
                                            <li>
                                                Lorem ipsum dolor sit amet,
                                                consectetur adipiscing elit.
                                                Etiam quis diam erat. Duis velit
                                                lectus, posuere a blandit sit
                                                amet, tempor at lorem. Donec
                                                ultricies, lorem sed ultrices
                                                interdum. Lorem ipsum dolor sit
                                                amet, consectetur adipiscing
                                                elit.
                                            </li>
                                            <li>
                                                Lorem ipsum dolor sit amet,
                                                consectetur adipiscing elit.
                                                Etiam quis diam erat. Duis velit
                                                lectus, posuere a blandit sit
                                                amet, tempor at lorem. Donec
                                                ultricies, lorem sed ultrices
                                                interdum. Lorem ipsum dolor sit
                                                amet, consectetur adipiscing
                                                elit.
                                            </li>
                                        </ol>
                                        <h3>Contact Us</h3>
                                        <p>
                                            If you have any questions about this
                                            Agreement, please contact us filling
                                            this
                                            <button
                                                type="submit"
                                                class="btn-upper btn btn-primary checkout-page-button"
                                            >
                                                Contact Us
                                            </button>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- /.row -->
                        </div>
                    </div>
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
