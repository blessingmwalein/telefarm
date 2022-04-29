<template>
    <shop-layout :title="'Dashboard'">
        <div class="container-fluid py-4">
            <div class="row">
                <div class="col-lg-12 position-relative z-index-2">
                    <div class="card card-plain mb-4">
                        <div class="card-body p-3">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="d-flex flex-column h-100">
                                        <h2 class="font-weight-bolder mb-0">
                                            General Statistics
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-5 col-sm-6">
                            <div class="card mb-4">
                                <div class="card-body p-3">
                                    <div class="row">
                                        <div class="col-8">
                                            <div class="numbers">
                                                <p
                                                    class="text-sm mb-0 text-capitalize font-weight-bold"
                                                >
                                                    Total Orders
                                                </p>
                                                <h5
                                                    class="font-weight-bolder mb-0"
                                                >
                                                    $53,000
                                                    <span
                                                        class="text-success text-sm font-weight-bolder"
                                                        >+55%</span
                                                    >
                                                </h5>
                                            </div>
                                        </div>
                                        <div class="col-4 text-end">
                                            <div
                                                class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md"
                                            >
                                                <i
                                                    class="ni ni-money-coins text-lg opacity-10"
                                                    aria-hidden="true"
                                                ></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-sm-6 mt-sm-0 mt-4">
                            <div class="card">
                                <div class="card-body p-3">
                                    <div class="row">
                                        <div class="col-8">
                                            <div class="numbers">
                                                <p
                                                    class="text-sm mb-0 text-capitalize font-weight-bold"
                                                >
                                                    Sales
                                                </p>
                                                <h5
                                                    class="font-weight-bolder mb-0"
                                                >
                                                    $103,430
                                                    <span
                                                        class="text-success text-sm font-weight-bolder"
                                                        >+5%</span
                                                    >
                                                </h5>
                                            </div>
                                        </div>
                                        <div class="col-4 text-end">
                                            <div
                                                class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md"
                                            >
                                                <i
                                                    class="ni ni-cart text-lg opacity-10"
                                                    aria-hidden="true"
                                                ></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </shop-layout>
</template>

<script>
import ShopLayout from "@/Layouts/ShopLayout.vue";

export default {
    components: {
        ShopLayout,
    },
    props: [],
    computed: {},
};
</script>

<style></style>
