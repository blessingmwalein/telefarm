<template>
    <header class="header-style-1">
        <!-- ============================================== TOP MENU ============================================== -->
        <div class="top-bar animate-dropdown">
            <div class="container">
                <div class="header-top-inner">
                    <div class="cnt-account">
                        <ul class="list-unstyled">
                            <li v-if="$page.props.user">
                                <a :href="'/user/dashboard'"
                                    ><i class="icon fa fa-user"></i>My
                                    Account</a
                                >
                            </li>
                            <li v-if="!$page.props.user">
                                <a :href="route('login')"
                                    ><i class="icon fa fa-heart"></i>Login</a
                                >
                            </li>
                            <li v-if="!$page.props.user">
                                <a :href="route('register')"
                                    ><i class="icon fa fa-heart"></i>Register</a
                                >
                            </li>

                            <li v-if="$page.props.user">
                                <a href="#" @click.prevent="logout()"
                                    ><i class="icon fa fa-check"></i>Logout</a
                                >
                            </li>
                            <li v-if="$page.props.user">
                                <a
                                    v-if="$page.props.user.shop.length <= 0"
                                    href="/vendor-register"
                                    ><i class="icon fa fa-lock"></i>Become a
                                    Seller</a
                                >
                                <a
                                    v-if="$page.props.user.shop.length > 0"
                                    href="/shop/dashboad"
                                    ><i class="icon fa fa-lock"></i>Dashboard</a
                                >
                            </li>
                        </ul>
                    </div>
                    <!-- /.cnt-account -->
                    <div class="cnt-block">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                                <a
                                    href="#"
                                    class="dropdown-toggle"
                                    data-hover="dropdown"
                                    data-toggle="dropdown"
                                    ><span class="value">USD </span
                                    ><b class="caret"></b
                                ></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">USD</a></li>
                                    <li><a href="#">ZWL</a></li>
                                </ul>
                            </li>
                        </ul>
                        <!-- /.list-unstyled -->
                    </div>
                    <!-- /.cnt-cart -->
                    <div class="clearfix"></div>
                </div>
                <!-- /.header-top-inner -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /.header-top -->
        <!-- ============================================== TOP MENU : END ============================================== -->
        <div class="main-header">
            <div class="container">
                <div class="row">
                    <div
                        class="col-xs-12 col-lg-2 col-sm-12 col-md-3 logo-holder"
                    >
                        <!-- ============================================================= LOGO ============================================================= -->
                        <div class="logo">
                            <a href="/">
                                <h1
                                    style="
                                        font-weight: bold;
                                        font-size: 45px;
                                        color: white;
                                    "
                                >
                                    Telefarm
                                </h1>
                            </a>
                        </div>
                        <!-- /.logo -->
                        <!-- ============================================================= LOGO : END ============================================================= -->
                    </div>
                    <!-- /.logo-holder -->

                    <div
                        class="col-lg-5 col-md-4 col-sm-5 col-xs-12 top-search-holder"
                    >
                        <!-- /.contact-row -->
                        <!-- ============================================================= SEARCH AREA ============================================================= -->
                        <div class="search-area">
                            <form @submit="search()">
                                <div class="control-group">
                                    <input
                                        class="search-field"
                                        v-model="query"
                                        placeholder="Search here..."
                                        v-on:keyup.enter="search()"
                                    />
                                    <a
                                        class="search-button"
                                        href="#"
                                        @click="search()"
                                    ></a>
                                </div>
                            </form>
                        </div>
                        <!-- /.search-area -->
                        <!-- ============================================================= SEARCH AREA : END ============================================================= -->
                    </div>
                    <!-- /.top-search-holder -->

                    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 navmenu">
                        <div
                            class="yamm navbar navbar-default"
                            role="navigation"
                        >
                            <div class="navbar-header">
                                <button
                                    data-target="#mc-horizontal-menu-collapse"
                                    data-toggle="collapse"
                                    class="navbar-toggle collapsed"
                                    type="button"
                                >
                                    <span class="sr-only"
                                        >Toggle navigation</span
                                    >
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="nav-bg-class">
                                <div
                                    class="navbar-collapse collapse"
                                    id="mc-horizontal-menu-collapse"
                                >
                                    <div class="nav-outer">
                                        <ul class="nav navbar-nav">
                                            <li class="dropdown">
                                                <a
                                                    href="/"
                                                    class="dropdown-toggle"
                                                    >Home</a
                                                >
                                            </li>
                                            <li class="dropdown">
                                                <a
                                                    href="/main-shop"
                                                    class="dropdown-toggle"
                                                    >Shop</a
                                                >
                                            </li>
                                            <li class="dropdown">
                                                <a
                                                    href="#"
                                                    class="dropdown-toggle"
                                                    data-hover="dropdown"
                                                    data-toggle="dropdown"
                                                    >Store</a
                                                >
                                                <ul class="dropdown-menu pages">
                                                    <li>
                                                        <div
                                                            class="yamm-content"
                                                        >
                                                            <div class="row">
                                                                <div
                                                                    class="col-xs-12 col-menu"
                                                                >
                                                                    <ul
                                                                        class="links"
                                                                    >
                                                                        <li>
                                                                            <a
                                                                                href="/products/checkout"
                                                                                >Checkout</a
                                                                            >
                                                                        </li>
                                                                        <li>
                                                                            <a
                                                                                href="/products/cart"
                                                                                >Cart</a
                                                                            >
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="dropdown">
                                                <a
                                                    href="#"
                                                    class="dropdown-toggle"
                                                    >About Us</a
                                                >
                                            </li>
                                            <li class="dropdown">
                                                <a
                                                    href="#"
                                                    class="dropdown-toggle"
                                                    >Contact Us</a
                                                >
                                            </li>
                                        </ul>
                                        <!-- /.navbar-nav -->
                                        <div class="clearfix"></div>
                                    </div>
                                    <!-- /.nav-outer -->
                                </div>
                                <!-- /.navbar-collapse -->
                            </div>
                            <!-- /.nav-bg-class -->
                        </div>
                        <!-- /.navbar-default -->
                        <div class="top-cart-row">
                            <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->
                            <cart-drop-down></cart-drop-down>
                            <!-- /.dropdown-cart -->
                            <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->
                        </div>
                    </div>
                    <!-- /.container-class -->
                </div>

                <!-- /.row -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /.main-header -->
    </header>
</template>

<script>
import CartDropDown from "@/Components/Cards/CartDropDown.vue";
export default {
    components: {
        CartDropDown,
    },
    data() {
        return {
            query: "",
        };
    },
    methods: {
        logout() {
            this.$inertia.post(route("logout"));

            location.reload();
        },

        search() {
            location.href = `/shop/search/products?query=${this.query}`;
        },
    },
};
</script>

<style></style>
