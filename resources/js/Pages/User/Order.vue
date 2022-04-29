<template>
    <user-layout :title="'Orders'">
        <div class="container-fluid py-4">
            <div class="d-sm-flex justify-content-between">
                <div></div>
                <div class="d-flex">
                    <div class="dropdown d-inline">
                        <a
                            href="javascript:;"
                            class="btn btn-outline-dark dropdown-toggle"
                            data-bs-toggle="dropdown"
                            id="navbarDropdownMenuLink2"
                        >
                            Filters
                        </a>
                        <ul
                            class="dropdown-menu dropdown-menu-lg-start px-2 py-3"
                            aria-labelledby="navbarDropdownMenuLink2"
                            data-popper-placement="left-start"
                        >
                            <li>
                                <a
                                    class="dropdown-item border-radius-md"
                                    href="javascript:;"
                                    >Status: Pending</a
                                >
                            </li>
                            <li>
                                <a
                                    class="dropdown-item border-radius-md"
                                    href="javascript:;"
                                    >Status: Accepted</a
                                >
                            </li>
                            <li>
                                <a
                                    class="dropdown-item border-radius-md"
                                    href="javascript:;"
                                    >Status: Delivered</a
                                >
                            </li>
                            <li>
                                <hr class="horizontal dark my-2" />
                            </li>
                            <li>
                                <a
                                    class="dropdown-item border-radius-md text-danger"
                                    href="javascript:;"
                                    >Remove Filter</a
                                >
                            </li>
                        </ul>
                    </div>
                    <button
                        class="btn btn-icon btn-outline-dark ms-2 export"
                        data-type="csv"
                        type="button"
                    >
                        <span class="btn-inner--icon"
                            ><i class="ni ni-archive-2"></i
                        ></span>
                        <span class="btn-inner--text">Export CSV</span>
                    </button>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card" v-if="orders.data.length > 0">
                        <div class="table-responsive">
                            <table
                                class="table table-flush"
                                id="datatable-search"
                            >
                                <thead class="thead-light">
                                    <tr>
                                        <th>Id</th>
                                        <th>Date</th>
                                        <th>Status</th>
                                        <th>Customer</th>
                                        <th>Mobile</th>
                                        <th>Revenue</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr
                                        v-for="order in orders.data"
                                        :key="order.id"
                                    >
                                        <td>
                                            <a
                                                :href="`/user/dashboard/orders/${order.id}`"
                                                class="d-flex align-items-center"
                                            >
                                                <div class="form-check">
                                                    <input
                                                        class="form-check-input"
                                                        type="checkbox"
                                                        id="customCheck3"
                                                    />
                                                </div>
                                                <p
                                                    class="text-xs font-weight-bold ms-2 mb-0"
                                                >
                                                    #{{ order.id }}
                                                </p>
                                            </a>
                                        </td>
                                        <td class="font-weight-bold">
                                            <span class="my-2 text-xs">{{
                                                order.created_at
                                            }}</span>
                                        </td>
                                        <td class="text-xs font-weight-bold">
                                            <div
                                                class="d-flex align-items-center"
                                            >
                                                <button
                                                    class="btn btn-icon-only btn-rounded btn-outline-dark mb-0 me-2 btn-sm d-flex align-items-center justify-content-center"
                                                >
                                                    <i
                                                        class="fas fa-undo"
                                                        aria-hidden="true"
                                                    ></i>
                                                </button>
                                                <span>{{ order.status }}</span>
                                            </div>
                                        </td>
                                        <td class="text-xs font-weight-bold">
                                            <div
                                                class="d-flex align-items-center"
                                            >
                                                <img
                                                    src="/user-assets/img/team-2.jpg"
                                                    class="avatar avatar-xs me-2"
                                                    alt="user image"
                                                />
                                                <span
                                                    >{{ order.first_name }}
                                                    {{ order.last_name }}</span
                                                >
                                            </div>
                                        </td>
                                        <td class="text-xs font-weight-bold">
                                            <span class="my-2 text-xs">
                                                {{ order.mobile }}
                                            </span>
                                        </td>
                                        <td class="text-xs font-weight-bold">
                                            <span class="my-2 text-xs"
                                                >$500</span
                                            >
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card text-center" v-else>
                        <h1>No Order yet</h1>
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
            return new Date().toISOString().slice(0, 10);
        },
    },

    methods: {
        computeTotal(items) {
            var total = 0;
            items.forEach((element) => {
                total += element.price * element.quantity;
            });
            return total;
        },
    },
};
</script>

<style></style>
