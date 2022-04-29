<template>
    <app-layout title="Pending">
        <div class="body-content outer-top-bd">
            <div class="container">
                <div class="x-page inner-bottom-sm">
                    <div class="row">
                        <div class="col-md-12 x-text text-center">
                            <div
                                class="text-center"
                                style="
                                    display: block;
                                    margin-left: auto;
                                    margin-right: auto;
                                    width: 15%;
                                "
                            >
                                <img
                                    class="text-center"
                                    src="/shop/img/pending.png"
                                    alt=""
                                />
                            </div>
                            <p>
                                Your shop is pending approval.Contact Support
                                For Any Queries
                            </p>
                            <form
                                role="form"
                                class="outer-top-vs outer-bottom-xs"
                            >
                                <input
                                    placeholder="Search"
                                    autocomplete="off"
                                />
                                <button class="btn-default le-button">
                                    Search
                                </button>
                            </form>
                            <a href="/"
                                ><i class="fa fa-home"></i>Go To Homepage</a
                            >
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.sigin-in-->

                <!-- ============================================================= FOOTER ============================================================= -->

                <!-- ============================================== INFO BOXES ============================================== -->

                <!-- ============================================================= FOOTER : END============================================================= -->
            </div>
            <!-- /.container -->
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

    data() {
        return {};
    },
    mounted() {},

    methods: {},
};
</script>
