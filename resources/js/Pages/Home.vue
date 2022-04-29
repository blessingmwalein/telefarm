<template>
    <app-layout title="Dashboard">
        <div class="breadcrumb">
            <div class="container">
                <div class="breadcrumb-inner">
                    <ul class="list-inline list-unstyled">
                        <li class="active">Home</li>
                    </ul>
                </div>
                <!-- /.breadcrumb-inner -->
            </div>
            <!-- /.container -->
        </div>
        <div class="body-content outer-top-ts"></div>
        <div class="body-content outer-top-ts" id="top-banner-and-menu">
            <div class="container">
                <div class="slider-section">
                    <!-- ============================================== SIDEBAR ============================================== -->
                    <div class="col-xs-12 col-sm-3 col-md-2 sidebar">
                        <!-- ================================== TOP NAVIGATION ================================== -->
                        <div
                            class="side-menu side-menu-inner animate-dropdown outer-bottom-xs"
                        >
                            <nav class="yamm megamenu-horizontal">
                                <ul class="nav">
                                    <li class="menu-item">
                                        <a href="#"
                                            >On Sale! <span>7584</span></a
                                        >
                                    </li>
                                    <li
                                        v-for="category in categories.data"
                                        :key="category.id"
                                        class="dropdown menu-item"
                                    >
                                        <a
                                            href="#"
                                            class="dropdown-toggle"
                                            data-toggle="dropdown"
                                            >{{ category.name }}</a
                                        >
                                        <ul class="dropdown-menu mega-menu">
                                            <li class="yamm-content">
                                                <div class="row">
                                                    <div
                                                        v-for="chunk_item in chunk(
                                                            8,
                                                            category.sub_categories
                                                        )"
                                                        :key="chunk_item.id"
                                                        class="col-sm-12 col-md-3"
                                                    >
                                                        <ul
                                                            class="links list-unstyled"
                                                        >
                                                            <li
                                                                v-for="sub_category in chunk_item"
                                                                :key="
                                                                    sub_category.id
                                                                "
                                                            >
                                                                <a href="#">{{
                                                                    sub_category.name
                                                                }}</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->
                                                </div>
                                                <!-- /.row -->
                                            </li>
                                            <!-- /.yamm-content -->
                                        </ul>
                                        <!-- /.dropdown-menu -->
                                    </li>
                                    <!-- /.menu-item -->
                                </ul>
                                <!-- /.nav -->
                            </nav>
                            <!-- /.megamenu-horizontal -->
                        </div>

                        <!-- /.side-menu -->
                        <!-- ================================== TOP NAVIGATION : END ================================== -->
                    </div>
                    <!-- /.sidemenu-holder -->

                    <!-- ============================================== SIDEBAR : END ============================================== -->

                    <div class="col-xs-12 col-sm-9 col-md-10 homebanner-holder">
                        <div id="hero">
                            <div
                                id="owl-main"
                                class="owl-carousel owl-inner-nav owl-ui-sm"
                            >
                                <div
                                    class="item"
                                    style="
                                        background-image: url(/images/banner-bg.jpg);
                                    "
                                >
                                    <div class="container-fluid">
                                        <div
                                            class="caption bg-color vertical-center text-left"
                                        >
                                            <div
                                                class="slider-header fadeInDown-1"
                                                style="color: green"
                                            >
                                                Top Brands
                                            </div>
                                            <div
                                                class="big-text fadeInDown-1"
                                                style="color: green"
                                            >
                                                New Collections
                                            </div>
                                            <div
                                                class="excerpt fadeInDown-2 hidden-xs"
                                            >
                                                <span style="color: green"
                                                    >Lorem ipsum dolor sit amet,
                                                    consectetur
                                                    adipisicing.</span
                                                >
                                            </div>
                                            <div
                                                class="button-holder fadeInDown-3"
                                            >
                                                <a
                                                    href="#"
                                                    class="btn-lg btn btn-uppercase btn-primary shop-now-button"
                                                    >Shop Now</a
                                                >
                                            </div>
                                        </div>
                                        <!-- /.caption -->
                                    </div>
                                    <!-- /.container-fluid -->
                                </div>
                                <!-- /.item -->

                                <div
                                    class="item"
                                    style="
                                        background-image: url(/images/banner2.jpg);
                                    "
                                >
                                    <div class="container-fluid">
                                        <div
                                            class="caption bg-color vertical-center text-left"
                                        >
                                            <div
                                                class="slider-header fadeInDown-1"
                                                style="color: white"
                                            >
                                                Top Brands
                                            </div>
                                            <div
                                                class="big-text fadeInDown-1"
                                                style="color: white"
                                            >
                                                <span style="color: green"
                                                    >New</span
                                                >
                                                Collections
                                            </div>
                                            <div
                                                class="excerpt fadeInDown-2 hidden-xs"
                                            >
                                                <span style="color: green"
                                                    >Lorem ipsum dolor sit
                                                    amet</span
                                                >
                                            </div>
                                            <div
                                                class="button-holder fadeInDown-3"
                                            >
                                                <a
                                                    href="#"
                                                    class="btn-lg btn btn-uppercase btn-primary shop-now-button"
                                                    >Shop Now</a
                                                >
                                            </div>
                                        </div>
                                        <!-- /.caption -->
                                    </div>
                                    <!-- /.container-fluid -->
                                </div>
                                <!-- /.item -->
                            </div>
                            <!-- /.owl-carousel -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <!-- ============================================== CONTENT ============================================== -->
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <section class="section featured-section wow fadeInUp">
                            <h2>Stores For You</h2>
                            <div class="featured-product">
                                <div
                                    class="owl-carousel homepage-owl-carousel custom-carousel owl-theme outer-top-xs"
                                >
                                    <div
                                        v-for="shop in shops.data"
                                        :key="shop.id"
                                        class="item item-carousel"
                                    >
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div
                                                        class=""
                                                        style="padding: 20px"
                                                    >
                                                        <a
                                                            :href="`/shop/${shop.id}`"
                                                        >
                                                            <img
                                                                src="/images/shop.png"
                                                                alt=""
                                                            />
                                                        </a>
                                                    </div>
                                                    <!-- /.image -->
                                                </div>
                                                <div class="product-info">
                                                    <h3 class="name">
                                                        <a
                                                            :href="`/shop/${shop.id}`"
                                                            >{{ shop.name }}</a
                                                        >
                                                    </h3>
                                                </div>
                                            </div>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                </div>

                                <!-- /.home-owl-carousel -->
                            </div>
                        </section>

                        <div
                            class="alert alert-success"
                            role="alert"
                            v-if="message"
                        >
                            {{ message }}
                        </div>
                        <div
                            id="product-tabs-slider"
                            class="scroll-tabs wow fadeInUp"
                        >
                            <div class="more-info-tab clearfix">
                                <h3 class="new-product-title pull-left">
                                    Latest Products
                                </h3>

                                <ul
                                    class="nav nav-tabs nav-tab-line pull-right"
                                    id="new-products-1"
                                >
                                    <li class="activ">
                                        <a
                                            data-transition-type="backSlide"
                                            href="#all"
                                            data-toggle="tab"
                                            >All</a
                                        >
                                    </li>
                                    <li
                                        v-for="sub_category in sub_categories.data"
                                        :key="sub_category.id"
                                    >
                                        <a
                                            data-transition-type="backSlide"
                                            :href="`#${sub_category.slug}`"
                                            data-toggle="tab"
                                            >{{ sub_category.name }}</a
                                        >
                                    </li>
                                </ul>
                                <!-- /.nav-tabs -->
                            </div>
                            <div class="tab-content outer-top-xs">
                                <div class="tab-pane in active" id="all">
                                    <div class="product-slider">
                                        <div
                                            class="owl-carousel home-owl-carousel custom-carousel owl-theme"
                                        >
                                            <div
                                                v-for="product in products.data"
                                                :key="product.id"
                                                class="item item-carousel"
                                            >
                                                <div class="products">
                                                    <product-card
                                                        :product="product"
                                                    ></product-card>
                                                    <!-- /.product -->
                                                </div>
                                                <!-- /.products -->
                                            </div>
                                            <!-- /.item -->

                                            <!-- /.item -->
                                        </div>
                                        <!-- /.home-owl-carousel -->
                                    </div>
                                    <!-- /.product-slider -->
                                </div>
                                <!-- /.tab-pane -->

                                <div
                                    v-for="sub_category in sub_categories.data"
                                    :key="sub_category.id"
                                    class="tab-pane"
                                    :id="`${sub_category.slug}`"
                                >
                                    <div class="product-slider">
                                        <div
                                            class="owl-carousel home-owl-carousel custom-carousel owl-theme"
                                        >
                                            <div
                                                v-for="product in sub_category.products"
                                                :key="product.id"
                                                class="item item-carousel"
                                            >
                                                <div class="products">
                                                    <product-card
                                                        :product="product"
                                                    ></product-card>
                                                    <!-- /.product -->
                                                </div>
                                                <!-- /.products -->
                                            </div>
                                        </div>
                                        <!-- /.home-owl-carousel -->
                                    </div>
                                    <!-- /.product-slider -->
                                </div>
                            </div>
                            <!-- /.tab-content -->
                        </div>
                    </div>
                </div>
            </div>

            <!-- ============================================== Coupons  ============================================== -->
            <section class="section coupons-section">
                <div class="container">
                    <h3 class="section-title">Latest Promotions</h3>

                    <div class="coupons-deals">
                        <div
                            class="owl-carousel home-owl-carousel1 custom-carousel owl-theme outer-top-xs"
                        >
                            <div class="item item-carousel">
                                <div class="products">
                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <img
                                                    class="img-responsive"
                                                    src="/images/coupons/img1.jpg"
                                                    alt=""
                                                />
                                                <div class="brand">
                                                    Flipmart
                                                </div>
                                                <h3 class="name">
                                                    <a href="#"
                                                        >Flat 40% off on hotel
                                                        bookings in 10 cities</a
                                                    >
                                                </h3>
                                            </div>
                                            <!-- /.image -->
                                        </div>
                                        <!-- /.product-image -->

                                        <div class="product-info text-left">
                                            <div class="discount">
                                                25% <span>OFF</span>
                                            </div>
                                            <div class="show-code">
                                                <a
                                                    href="#"
                                                    data-toggle="modal"
                                                    data-target="#myModal"
                                                    >Show Code</a
                                                >
                                            </div>
                                            <p class="exp-date">
                                                <i class="fa fa-clock-o"></i>
                                                Expires on 2019-11-16
                                            </p>
                                        </div>
                                    </div>
                                    <!-- /.product -->
                                </div>
                                <!-- /.products -->

                                <div class="products">
                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <img
                                                    class="img-responsive"
                                                    src="/images/coupons/img2.jpg"
                                                    alt=""
                                                />
                                                <div class="brand">Marazzo</div>
                                                <h3 class="name">
                                                    <a href="#"
                                                        >Get 15% off on shopping
                                                        above $ 2000 at
                                                        Vanitywagon</a
                                                    >
                                                </h3>
                                            </div>
                                            <!-- /.image -->
                                        </div>
                                        <!-- /.product-image -->

                                        <div class="product-info text-left">
                                            <div class="discount">
                                                15% <span>OFF</span>
                                            </div>
                                            <div class="show-code">
                                                <a
                                                    href="#"
                                                    data-toggle="modal"
                                                    data-target="#myModal"
                                                    >Show Code</a
                                                >
                                            </div>
                                            <p class="exp-date">
                                                <i class="fa fa-clock-o"></i>
                                                Expires on 2019-11-16
                                            </p>
                                        </div>
                                    </div>
                                    <!-- /.product -->
                                </div>
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                                <div class="products">
                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <img
                                                    class="img-responsive"
                                                    src="/images/coupons/img3.jpg"
                                                    alt=""
                                                />
                                                <div class="brand">Qualis</div>
                                                <h3 class="name">
                                                    <a href="#">
                                                        Monsoon Sale: Upto 10%
                                                        Off on Domestic Flight
                                                        Bookings
                                                    </a>
                                                </h3>
                                            </div>
                                            <!-- /.image -->
                                        </div>
                                        <!-- /.product-image -->

                                        <div class="product-info text-left">
                                            <div class="discount">
                                                10% <span>OFF</span>
                                            </div>
                                            <div class="show-code">
                                                <a
                                                    href="#"
                                                    data-toggle="modal"
                                                    data-target="#myModal"
                                                    >Show Code</a
                                                >
                                            </div>
                                            <p class="exp-date">
                                                <i class="fa fa-clock-o"></i>
                                                Expires on 2019-11-16
                                            </p>
                                        </div>
                                    </div>
                                    <!-- /.product -->
                                </div>
                                <!-- /.products -->

                                <div class="products">
                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <img
                                                    class="img-responsive"
                                                    src="/images/coupons/img4.jpg"
                                                    alt=""
                                                />
                                                <div class="brand">Harrier</div>
                                                <h3 class="name">
                                                    <a href="#"
                                                        >Flat 90% off on night
                                                        dinner hotel bookings</a
                                                    >
                                                </h3>
                                            </div>
                                            <!-- /.image -->
                                        </div>
                                        <!-- /.product-image -->

                                        <div class="product-info text-left">
                                            <div class="discount">
                                                90% <span>OFF</span>
                                            </div>
                                            <div class="show-code">
                                                <a
                                                    href="#"
                                                    data-toggle="modal"
                                                    data-target="#myModal"
                                                    >Show Code</a
                                                >
                                            </div>
                                            <p class="exp-date">
                                                <i class="fa fa-clock-o"></i>
                                                Expires on 2019-11-16
                                            </p>
                                        </div>
                                    </div>
                                    <!-- /.product -->
                                </div>
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                                <div class="products">
                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <img
                                                    class="img-responsive"
                                                    src="/images/coupons/img1.jpg"
                                                    alt=""
                                                />
                                                <div class="brand">
                                                    Flipmart
                                                </div>
                                                <h3 class="name">
                                                    <a href="#"
                                                        >Flat 40% off on hotel
                                                        bookings in 10 cities</a
                                                    >
                                                </h3>
                                            </div>
                                            <!-- /.image -->
                                        </div>
                                        <!-- /.product-image -->

                                        <div class="product-info text-left">
                                            <div class="discount">
                                                25% <span>OFF</span>
                                            </div>
                                            <div class="show-code">
                                                <a
                                                    href="#"
                                                    data-toggle="modal"
                                                    data-target="#myModal"
                                                    >Show Code</a
                                                >
                                            </div>
                                            <p class="exp-date">
                                                <i class="fa fa-clock-o"></i>
                                                Expires on 2019-11-16
                                            </p>
                                        </div>
                                    </div>
                                    <!-- /.product -->
                                </div>
                                <!-- /.products -->
                                <div class="products">
                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <img
                                                    class="img-responsive"
                                                    src="/images/coupons/img1.jpg"
                                                    alt=""
                                                />
                                                <div class="brand">
                                                    Flipmart
                                                </div>
                                                <h3 class="name">
                                                    <a href="#"
                                                        >Flat 40% off on hotel
                                                        bookings in 10 cities</a
                                                    >
                                                </h3>
                                            </div>
                                            <!-- /.image -->
                                        </div>
                                        <!-- /.product-image -->

                                        <div class="product-info text-left">
                                            <div class="discount">
                                                25% <span>OFF</span>
                                            </div>
                                            <div class="show-code">
                                                <a
                                                    href="#"
                                                    data-toggle="modal"
                                                    data-target="#myModal"
                                                    >Show Code</a
                                                >
                                            </div>

                                            <p class="exp-date">
                                                <i class="fa fa-clock-o"></i>
                                                Expires on 2019-11-16
                                            </p>
                                        </div>
                                    </div>
                                    <!-- /.product -->
                                </div>
                                <!-- /.home-owl-carousel -->
                            </div>
                            <!-- /.item -->
                        </div>
                    </div>
                </div>
                <!-- Modal -->
                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-body">
                                <button
                                    type="button"
                                    class="close"
                                    data-dismiss="modal"
                                >
                                    &times;
                                </button>
                                <div>
                                    <img
                                        class="img-responsive"
                                        src="/images/coupons/img1.jpg"
                                        alt=""
                                    />
                                    <h3 class="mb-20">
                                        Flat 40% off hotel bookings in 10 cities
                                    </h3>
                                    <div class="coupon-content">
                                        Not applicable to ICANN fees, taxes,
                                        transfers,or gift cards. Cannot be used
                                        in conjunction with any other offer,
                                        sale, discount or promotion.
                                        <span
                                            style="
                                                color: #ed6663;
                                                display: block;
                                                margin-top: 10px;
                                            "
                                            ><a
                                                style="
                                                    color: #ed6663;
                                                    text-decoration: underline;
                                                "
                                                href="#"
                                                >Visit our Store</a
                                            ></span
                                        >
                                    </div>
                                </div>

                                <div>
                                    <h6 class="color-mid">
                                        Click below to get your coupon code
                                    </h6>
                                    <div class="copy-coupon-wrap">
                                        <input
                                            type="text"
                                            value="X132-17GT-OL57"
                                            id="X132-17GT-OL571"
                                            class="coupon-code"
                                        />
                                    </div>
                                </div>
                            </div>

                            <div class="modal-footer">
                                <h4>Subscribe to Mail</h4>
                                <p>
                                    Get our Daily email newsletter with Special
                                    Services, Updates, Offers and more!
                                </p>
                                <form
                                    id="mc4wp-form-2"
                                    class="mc4wp-form mc4wp-form-1257"
                                    method="post"
                                    data-id="1257"
                                    data-name="dealdots"
                                >
                                    <div class="mc4wp-form-fields">
                                        <div id="container_form_news">
                                            <div id="container_form_news2">
                                                <input
                                                    type="email"
                                                    id="newsletter1"
                                                    name="EMAIL"
                                                    placeholder="Your email address"
                                                    required
                                                />
                                                <button
                                                    type="submit"
                                                    class="button subscribe"
                                                >
                                                    <span>Subscribe</span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- /.section -->
            <!-- ============================================== FEATURED PRODUCTS : END ============================================== -->
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <!-- ============================================== FEATURED PRODUCTS ============================================== -->
                        <section class="section wow fadeInUp">
                            <h3 class="section-title">Flash Deals</h3>
                            <div class="box-timer">
                                <h5>Ends On:</h5>
                                <div class="countbox_1 timer-grid"></div>
                            </div>
                            <div class="new-arriavls">
                                <div
                                    class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs"
                                >
                                    <div
                                        v-for="product in products.data"
                                        :key="product.id"
                                        class="item item-carousel"
                                    >
                                        <div class="products">
                                            <product-card
                                                :product="product"
                                            ></product-card>
                                            <!-- /.product -->
                                        </div>
                                        <!-- /.products -->
                                    </div>
                                    <!-- /.item -->
                                    <!-- /.item -->
                                </div>
                                <!-- /.home-owl-carousel -->
                            </div>
                        </section>
                        <!-- /.section -->
                        <!-- ============================================== FEATURED PRODUCTS : END ============================================== -->
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
    props: ["categories", "products", "sub_categories", "shops"],
    components: {
        AppLayout,
        FooterNav,
        ProductCard,
    },
    data() {
        return {
            activeTabe: "All",
        };
    },
    mixins: [CartService],
    mounted() {
        // location.reload();
        // Use sweetalert2
    },
    methods: {
        chunk(perChunk, inputArray) {
            var result = inputArray.reduce((resultArray, item, index) => {
                const chunkIndex = Math.floor(index / perChunk);

                if (!resultArray[chunkIndex]) {
                    resultArray[chunkIndex] = []; // start a new chunk
                }

                resultArray[chunkIndex].push(item);

                return resultArray;
            }, []);

            return result;
        },
    },
};
</script>
