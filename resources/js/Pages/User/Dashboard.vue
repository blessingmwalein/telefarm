<template>
    <user-layout :title="'Dashboard'">
        <div class="container-fluid py-4">
            <div class="row">
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-body p-3 position-relative">
                            <div class="row">
                                <div class="col-7 text-start">
                                    <p
                                        class="text-sm mb-1 text-capitalize font-weight-bold"
                                    >
                                        Orders
                                    </p>
                                    <h5 class="font-weight-bolder mb-0">
                                        ${{ order_total }}
                                    </h5>
                                    <span
                                        class="text-sm text-end text-success font-weight-bolder mt-auto mb-0"
                                        >{{ orders.data.length }} orders</span
                                    >
                                </div>
                                <div class="col-5">
                                    <div class="dropdown text-end">
                                        <a
                                            href="javascript:;"
                                            class="cursor-pointer text-secondary"
                                            id="dropdownUsers1"
                                            data-bs-toggle="dropdown"
                                            aria-expanded="false"
                                        >
                                            <span
                                                class="text-xs text-secondary"
                                                >{{ todayDate }}</span
                                            >
                                        </a>
                                    </div>
                                </div>
                            </div>
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
    props: ["orders", "order_total"],
    computed: {
        todayDate() {
            return new Date().toISOString().slice(0, 10)
        },
    },
};
</script>

<style></style>
