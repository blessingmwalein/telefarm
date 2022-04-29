<template>
    <app-layout title="Dashboard">
        <div class="breadcrumb">
            <div class="container">
                <div class="breadcrumb-inner">
                    <ul class="list-inline list-unstyled">
                        <li><a href="#">Home</a></li>
                        <li class="active">Shopping Checkout</li>
                    </ul>
                </div>
                <!-- /.breadcrumb-inner -->
            </div>
            <!-- /.container -->
        </div>
        <div class="body-content checkout-box outer-top-ts">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-9">
                        <!-- /.breadcrumb -->
                        <div>
                            <div
                                class="panel-group checkout-steps"
                                id="accordion"
                            >
                                <!-- checkout-step-01  -->
                                <div
                                    class="panel panel-default checkout-step-01"
                                >
                                    <!-- panel-heading -->
                                    <div class="panel-heading">
                                        <h4 class="unicase-checkout-title">
                                            <a
                                                data-toggle="collapse"
                                                class=""
                                                data-parent="#accordion"
                                                href="#collapseOne"
                                            >
                                                <span>1</span>Billing Details
                                            </a>
                                        </h4>
                                    </div>
                                    <!-- panel-heading -->

                                    <div
                                        id="collapseOne"
                                        class="panel-collapse collapse in"
                                    >
                                        <!-- panel-body  -->
                                        <div class="panel-body">
                                            <div class="row">
                                                <!-- already-registered-login -->
                                                <div
                                                    class="col-md-12 col-sm-12 already-registered-login"
                                                >
                                                    <h4
                                                        class="checkout-subtitle"
                                                    >
                                                        Order Details
                                                    </h4>

                                                    <form
                                                        class="register-form row"
                                                        role="form"
                                                        @submit.prevent="
                                                            saveOrder()
                                                        "
                                                    >
                                                        <div
                                                            class="form-group col-md-12"
                                                        >
                                                            <label
                                                                class="info-title"
                                                                for="exampleInputEmail1"
                                                                >Email Address
                                                                <span
                                                                    >*</span
                                                                ></label
                                                            >
                                                            <input
                                                                type="email"
                                                                class="form-control unicase-form-control text-input"
                                                                v-model="
                                                                    form.email
                                                                "
                                                                placeholder=""
                                                            />
                                                            <small
                                                                class="invalid-tooltip"
                                                                v-if="
                                                                    form.errors
                                                                        .email
                                                                "
                                                            >
                                                                {{
                                                                    form.errors
                                                                        .email
                                                                }}
                                                            </small>
                                                        </div>

                                                        <div
                                                            class="form-group col-md-6"
                                                        >
                                                            <label
                                                                class="info-title"
                                                                >First Name
                                                                <span
                                                                    >*</span
                                                                ></label
                                                            >
                                                            <input
                                                                type="text"
                                                                v-model="
                                                                    form.first_name
                                                                "
                                                                class="form-control unicase-form-control text-input"
                                                                placeholder=""
                                                            />
                                                            <small
                                                                class="invalid-tooltip"
                                                                v-if="
                                                                    form.errors
                                                                        .first_name
                                                                "
                                                            >
                                                                {{
                                                                    form.errors
                                                                        .first_name
                                                                }}
                                                            </small>
                                                        </div>
                                                        <div
                                                            class="form-group col-md-6"
                                                        >
                                                            <label
                                                                class="info-title"
                                                                >Last Name
                                                                <span
                                                                    >*</span
                                                                ></label
                                                            >
                                                            <input
                                                                type="text"
                                                                v-model="
                                                                    form.last_name
                                                                "
                                                                class="form-control unicase-form-control text-input"
                                                                placeholder=""
                                                            />
                                                            <small
                                                                class="invalid-tooltip"
                                                                v-if="
                                                                    form.errors
                                                                        .last_name
                                                                "
                                                            >
                                                                {{
                                                                    form.errors
                                                                        .last_name
                                                                }}
                                                            </small>
                                                        </div>
                                                        <div
                                                            class="form-group col-md-12"
                                                        >
                                                            <label
                                                                class="info-title"
                                                                >Order
                                                                Notes</label
                                                            >
                                                            <textarea
                                                                v-model="
                                                                    form.order_notes
                                                                "
                                                                class="form-control"
                                                                rows="4"
                                                            ></textarea>
                                                            <small
                                                                class="invalid-tooltip"
                                                                v-if="
                                                                    form.errors
                                                                        .order_notes
                                                                "
                                                            >
                                                                {{
                                                                    form.errors
                                                                        .order_notes
                                                                }}
                                                            </small>
                                                        </div>

                                                        <div
                                                            class="form-group col-md-6"
                                                        >
                                                            <label
                                                                class="info-title"
                                                                >Mobile
                                                                <span
                                                                    >*</span
                                                                ></label
                                                            >
                                                            <input
                                                                type="text"
                                                                v-model="
                                                                    form.mobile
                                                                "
                                                                class="form-control unicase-form-control text-input"
                                                                placeholder=""
                                                            />
                                                            <small
                                                                class="invalid-tooltip"
                                                                v-if="
                                                                    form.errors
                                                                        .mobile
                                                                "
                                                            >
                                                                {{
                                                                    form.errors
                                                                        .mobile
                                                                }}
                                                            </small>
                                                        </div>

                                                        <div
                                                            class="form-group col-md-6"
                                                        >
                                                            <label
                                                                class="info-title"
                                                                >City
                                                                <span
                                                                    >*</span
                                                                ></label
                                                            >
                                                            <input
                                                                type="text"
                                                                v-model="
                                                                    form.city
                                                                "
                                                                class="form-control unicase-form-control text-input"
                                                                placeholder=""
                                                            />
                                                            <small
                                                                class="invalid-tooltip"
                                                                v-if="
                                                                    form.errors
                                                                        .city
                                                                "
                                                            >
                                                                {{
                                                                    form.errors
                                                                        .city
                                                                }}
                                                            </small>
                                                        </div>

                                                        <div
                                                            class="form-group col-md-12"
                                                        >
                                                            <label
                                                                class="info-title"
                                                                >Street</label
                                                            >
                                                            <textarea
                                                                v-model="
                                                                    form.street
                                                                "
                                                                class="form-control"
                                                                rows="4"
                                                            ></textarea>
                                                            <small
                                                                class="invalid-tooltip"
                                                                v-if="
                                                                    form.errors
                                                                        .street
                                                                "
                                                            >
                                                                {{
                                                                    form.errors
                                                                        .street
                                                                }}
                                                            </small>
                                                        </div>

                                                        <div class="form-group">
                                                            <label
                                                                class="info-title"
                                                                >Your
                                                                Order</label
                                                            >
                                                            <table
                                                                class="table table-bordered border-primary"
                                                            >
                                                                <thead>
                                                                    <tr>
                                                                        <th
                                                                            scope="col"
                                                                        >
                                                                            <b
                                                                                >Product</b
                                                                            >
                                                                        </th>
                                                                        <th
                                                                            scope="col"
                                                                        >
                                                                            <b
                                                                                >SubTotal</b
                                                                            >
                                                                        </th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr
                                                                        v-for="item in this
                                                                            .$page
                                                                            .props
                                                                            .cart
                                                                            .cart"
                                                                        :key="
                                                                            item.id
                                                                        "
                                                                    >
                                                                        <td
                                                                            scope="row"
                                                                            style="
                                                                                border: 1px
                                                                                    solid
                                                                                    #ecf0f1;
                                                                                padding: 10px
                                                                                    20px;
                                                                                font-weight: none;
                                                                            "
                                                                        >
                                                                            {{
                                                                                item.name +
                                                                                " x " +
                                                                                item.quantity
                                                                            }}
                                                                        </td>
                                                                        <td
                                                                            style="
                                                                                border: 1px
                                                                                    solid
                                                                                    #ecf0f1;
                                                                                padding: 10px
                                                                                    5px;
                                                                            "
                                                                        >
                                                                            ${{
                                                                                item.quantity *
                                                                                item.price
                                                                            }}
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <th
                                                                            scope="row"
                                                                            style="
                                                                                border: 1px
                                                                                    solid
                                                                                    #ecf0f1;
                                                                                padding: 10px
                                                                                    20px;
                                                                                font-weight: none;
                                                                            "
                                                                        >
                                                                            Total
                                                                        </th>
                                                                        <th
                                                                            style="
                                                                                border: 1px
                                                                                    solid
                                                                                    #ecf0f1;
                                                                                padding: 10px
                                                                                    5px;
                                                                            "
                                                                        >
                                                                            ${{
                                                                                this
                                                                                    .$page
                                                                                    .props
                                                                                    .cart
                                                                                    .cartTotalPrice
                                                                            }}
                                                                        </th>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>

                                                        <button
                                                            type="submit"
                                                            class="btn-upper btn btn-primary checkout-page-button"
                                                        >
                                                            Place Order
                                                        </button>
                                                    </form>
                                                </div>
                                                <!-- already-registered-login -->
                                            </div>
                                        </div>
                                        <!-- panel-body  -->
                                    </div>
                                    <!-- row -->
                                </div>
                                <!-- checkout-step-01  -->
                            </div>
                            <!-- /.checkout-steps -->
                            <!-- /.checkout-steps -->
                        </div>
                    </div>
                </div>
            </div>

            <footer-nav></footer-nav>
        </div>
    </app-layout>
</template>

<script>
import AppLayout from "@/Layouts/AppLayout.vue";
import FooterNav from "@/Components/Navs/Footer.vue";
import ProductCard from "@/Components/Cards/ProductCard.vue";
import CartService from "@/Mixins/Cart";
export default {
    props: [],
    components: {
        AppLayout,
        FooterNav,
        ProductCard,
    },
    data() {
        return {
            activeTabe: "All",
            form: this.$inertia.form({
                first_name: "",
                last_name: "",
                order_notes: "",
                order_items: this.$page.props.cart.cart,
                email: "",
                city: "",
                street: "",
                mobile: "",
            }),
        };
    },
    methods: {
        saveOrder() {
            //   console.log( this.$page.props.cart.cart)
            this.form.post(this.route("order.store"));
        },
    },
};
</script>

<style>
.invalid-tooltip {
    color: red;
}
</style>
