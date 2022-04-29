<template>
    <user-layout :title="'Addresses'">
        <div class="container-fluid my-3 py-3">
            <div class="row mt-4">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header pb-0 px-3">
                            <h6 class="mb-0">Saved Addresses</h6>
                        </div>
                        <div class="card-body pt-4 p-3">
                            <ul class="list-group">
                                <li
                                    v-for="address in addresses"
                                    :key="address.id"
                                    class="list-group-item border-0 d-flex p-4 mb-2 bg-gray-100 border-radius-lg"
                                >
                                    <div class="d-flex flex-column">
                                        <h6 class="mb-3 text-sm">
                                            {{ user.data.name }}
                                        </h6>
                                        <span class="mb-2 text-xs"
                                            >Mobile:
                                            <span
                                                class="text-dark font-weight-bold ms-sm-2"
                                                >{{ address.mobile }}</span
                                            ></span
                                        >
                                        <span class="mb-2 text-xs"
                                            >Email Address:
                                            <span
                                                class="text-dark ms-sm-2 font-weight-bold"
                                                >{{ address.email }}</span
                                            ></span
                                        >
                                        <span class="text-xs"
                                            >Street:
                                            <span
                                                class="text-dark ms-sm-2 font-weight-bold"
                                                >{{ address.street }}</span
                                            ></span
                                        >
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </user-layout>
</template>

<script>
import UserLayout from "@/Layouts/UserLayout.vue";

export default {
    components: {
        UserLayout,
    },

    props: ["addresses", "user"],
    computed: {},
    methods: {
        deleteAddress(id) {
            var form = this.$inertia.form({
                id: id,
            });
            form.post("/address");
        },
    },
};
</script>

<style></style>
