<template>
    <user-layout :title="`Order${order.data.id}`">
        <div class="container-fluid py-4">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <div class="card mb-4">
                        <div class="card-header p-3 pb-0">
                            <div
                                class="d-flex justify-content-between align-items-center"
                            >
                                <div>
                                    <h6>Order Details</h6>
                                    <p class="text-sm mb-0">
                                        Order no.
                                        <b>{{ order.data.id }}</b> from
                                        <b>{{ order.data.created_at }}</b>
                                    </p>
                                    <p class="text-sm">
                                        Code: <b>{{ order.data.id }}</b>
                                    </p>
                                </div>
                                <a
                                    href="javascript:;"
                                    class="btn bg-gradient-secondary ms-auto mb-0"
                                    >Invoice</a
                                >
                            </div>
                        </div>
                        <div class="card-body p-3 pt-0">
                            <hr class="horizontal dark mt-0 mb-4" />
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="d-flex">
                                        <div>
                                            <img
                                                src="https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&amp;ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=1400&amp;q=80"
                                                class="avatar avatar-xxl me-3"
                                                alt="product image"
                                            />
                                        </div>
                                        <div>
                                            <p class="text-sm mb-3">
                                                Order was delivered
                                                {{
                                                    order.data.created_at_human
                                                }}
                                            </p>
                                            <span
                                                class="badge badge-sm bg-gradient-success"
                                                >{{ order.data.status }}</span
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div
                                    class="col-lg-6 col-md-6 col-12 my-auto text-end"
                                ></div>
                            </div>
                            <hr class="horizontal dark mt-4 mb-4" />
                            <div class="row">
                                <div class="col-lg-3 col-md-6 col-12">
                                    <h6 class="mb-3">Track order</h6>
                                    <div class="timeline timeline-one-side">
                                        <div class="timeline-block mb-3">
                                            <span class="timeline-step">
                                                <i
                                                    class="ni ni-bell-55 text-secondary"
                                                ></i>
                                            </span>
                                            <div class="timeline-content">
                                                <h6
                                                    class="text-dark text-sm font-weight-bold mb-0"
                                                >
                                                    Order received
                                                </h6>
                                                <p
                                                    class="text-secondary font-weight-bold text-xs mt-1 mb-0"
                                                >
                                                    {{ order.data.created_at }}
                                                </p>
                                            </div>
                                        </div>
                                        <div class="timeline-block mb-3">
                                            <span class="timeline-step">
                                                <i
                                                    class="ni ni-html5 text-secondary"
                                                ></i>
                                            </span>
                                            <div class="timeline-content">
                                                <h6
                                                    class="text-dark text-sm font-weight-bold mb-0"
                                                >
                                                    Generate order id #1832412
                                                </h6>
                                                <p
                                                    class="text-secondary font-weight-bold text-xs mt-1 mb-0"
                                                >
                                                    22 DEC 7:21 AM
                                                </p>
                                            </div>
                                        </div>
                                        <div class="timeline-block mb-3">
                                            <span class="timeline-step">
                                                <i
                                                    class="ni ni-cart text-secondary"
                                                ></i>
                                            </span>
                                            <div class="timeline-content">
                                                <h6
                                                    class="text-dark text-sm font-weight-bold mb-0"
                                                >
                                                    Order transmited to courier
                                                </h6>
                                                <p
                                                    class="text-secondary font-weight-bold text-xs mt-1 mb-0"
                                                >
                                                    22 DEC 8:10 AM
                                                </p>
                                            </div>
                                        </div>
                                        <div class="timeline-block mb-3">
                                            <span class="timeline-step">
                                                <i
                                                    class="ni ni-check-bold text-success text-gradient"
                                                ></i>
                                            </span>
                                            <div class="timeline-content">
                                                <h6
                                                    class="text-dark text-sm font-weight-bold mb-0"
                                                >
                                                    Order delivered
                                                </h6>
                                                <p
                                                    class="text-secondary font-weight-bold text-xs mt-1 mb-0"
                                                >
                                                    22 DEC 4:54 PM
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-6 col-12">
                                    <h6 class="mb-3">Payment details</h6>
                                    <div
                                        class="card card-body border card-plain border-radius-lg d-flex align-items-center flex-row"
                                    >
                                        <h6 class="mb-0">Cash On delivery</h6>
                                        <button
                                            type="button"
                                            class="btn btn-icon-only btn-rounded btn-outline-secondary mb-0 ms-2 btn-sm d-flex align-items-center justify-content-center ms-auto"
                                            data-bs-toggle="tooltip"
                                            data-bs-placement="bottom"
                                            title=""
                                            data-bs-original-title="We do not store card details"
                                        >
                                            <i
                                                class="fas fa-info"
                                                aria-hidden="true"
                                            ></i>
                                        </button>
                                    </div>
                                    <h6 class="mb-3 mt-4">
                                        Billing Information
                                    </h6>
                                    <ul class="list-group">
                                        <li
                                            class="list-group-item border-0 d-flex p-4 mb-2 bg-gray-100 border-radius-lg"
                                        >
                                            <div class="d-flex flex-column">
                                                <h6 class="mb-3 text-sm">
                                                    {{ order.data.first_name }}
                                                    {{ order.data.last_name }}
                                                </h6>
                                                <span class="mb-2 text-xs"
                                                    >Mobile:
                                                    <span
                                                        class="text-dark font-weight-bold ms-2"
                                                        >{{
                                                            order.data.mobile
                                                        }}</span
                                                    ></span
                                                >
                                                <span class="mb-2 text-xs"
                                                    >Email Address:
                                                    <span
                                                        class="text-dark ms-2 font-weight-bold"
                                                        ><a
                                                            class="__cf_email__"
                                                            >{{
                                                                order.data.email
                                                            }}</a
                                                        ></span
                                                    ></span
                                                >
                                                <span class="text-xs"
                                                    >Order Notes:
                                                    <span
                                                        class="text-dark ms-2 font-weight-bold"
                                                        >{{
                                                            order.data
                                                                .order_notes
                                                        }}</span
                                                    ></span
                                                >
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-3 col-12 ms-auto">
                                    <h6 class="mb-3">Order Summary</h6>
                                    <div
                                        class="d-flex justify-content-between"
                                        v-for="item in order.data.order_items"
                                        :key="item.id"
                                    >
                                        <span class="mb-2 text-sm">
                                            {{ item.name }}:
                                        </span>
                                        <span
                                            class="text-dark font-weight-bold ms-2"
                                            >${{
                                                item.quantity * item.price
                                            }}</span
                                        >
                                    </div>

                                    <div
                                        class="d-flex justify-content-between mt-4"
                                    >
                                        <span class="mb-2 text-lg">
                                            Total:
                                        </span>
                                        <span
                                            class="text-dark text-lg ms-2 font-weight-bold"
                                            >${{ totalOrder }}</span
                                        >
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
    data() {
        return {
            order: this.order,
        };
    },
    props: ["order", "totalOrder"],
    computed: {
        todayDate() {
            return new Date().toISOString().slice(0, 10);
        },
    },
};
</script>

<style></style>
