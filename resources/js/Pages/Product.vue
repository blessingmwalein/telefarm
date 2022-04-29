<template>
  <app-layout title="Dashboard">
    <div class="breadcrumb">
      <div class="container">
        <div class="breadcrumb-inner">
          <ul class="list-inline list-unstyled">
            <li><a href="/">Home</a></li>
            <li><a href="/main-shop">Shop</a></li>
            <li><a href="/main-shop">Products</a></li>
            <li class="active">{{ product.data.name }}</li>
          </ul>
        </div>
        <!-- /.breadcrumb-inner -->
      </div>
      <!-- /.container -->
    </div>
    <div class="body-content outer-top-ts" id="top-banner-and-menu">
      <div class="container">
        <div class="row single-product">
          <div class="col-md-12">
            <div class="detail-block">
              <div class="row wow fadeInUp">
                <div class="alert alert-success" role="alert" v-if="message">
                  {{ message }}
                </div>
                <div class="col-xs-12 col-sm-5 col-md-4 gallery-holder">
                  <div
                    class="
                      product-item-holder
                      size-big
                      single-product-gallery
                      small-gallery
                    "
                  >
                    <div id="owl-single-product">
                      <div class="single-product-gallery-item" id="slide1">
                        <a
                          data-lightbox="image-1"
                          data-title="Gallery"
                          :href="`/storage/product_images/${product.data.image}`"
                        >
                          <img
                            class="img-responsive"
                            alt=""
                            :src="`/storage/product_images/${product.data.image}`"
                            :data-echo="`/storage/product_images/${product.data.image}`"
                          />
                        </a>
                      </div>
                      <!-- /.single-product-gallery-item -->

                      <div
                        v-if="product.data.images.length > 0"
                        class="single-product-gallery-item"
                        id="slide2"
                      >
                        <a
                          data-lightbox="image-1"
                          data-title="Gallery"
                          href="/images/products/p2.jpg"
                        >
                          <img
                            class="img-responsive"
                            alt=""
                            src="/images/blank.gif"
                            data-echo="/images/products/p2.jpg"
                          />
                        </a>
                      </div>
                      <!-- /.single-product-gallery-item -->
                    </div>
                    <!-- /.single-product-slider -->

                    <div class="single-product-gallery-thumbs gallery-thumbs">
                      <div id="owl-single-product-thumbnails">
                        <div class="item">
                          <a
                            class="horizontal-thumb active"
                            data-target="#owl-single-product"
                            data-slide="1"
                            href="#slide1"
                          >
                            <img
                              class="img-responsive"
                              alt=""
                              :src="`/storage/product_images/${product.data.image}`"
                              :data-echo="`/storage/product_images/${product.data.image}`"
                            />
                          </a>
                        </div>
                        <div class="item">
                          <a
                            class="horizontal-thumb active"
                            data-target="#owl-single-product"
                            data-slide="1"
                            href="#slide1"
                          >
                            <img
                              class="img-responsive"
                              alt=""
                              :src="`/storage/product_images/${product.data.image}`"
                              :data-echo="`/storage/product_images/${product.data.image}`"
                            />
                          </a>
                        </div>
                        <div class="item">
                          <a
                            class="horizontal-thumb active"
                            data-target="#owl-single-product"
                            data-slide="1"
                            href="#slide1"
                          >
                            <img
                              class="img-responsive"
                              alt=""
                              :src="`/storage/product_images/${product.data.image}`"
                              :data-echo="`/storage/product_images/${product.data.image}`"
                            />
                          </a>
                        </div>
                        <div class="item">
                          <a
                            class="horizontal-thumb active"
                            data-target="#owl-single-product"
                            data-slide="1"
                            href="#slide1"
                          >
                            <img
                              class="img-responsive"
                              alt=""
                              :src="`/storage/product_images/${product.data.image}`"
                              :data-echo="`/storage/product_images/${product.data.image}`"
                            />
                          </a>
                        </div>
                        <div class="item">
                          <a
                            class="horizontal-thumb active"
                            data-target="#owl-single-product"
                            data-slide="1"
                            href="#slide1"
                          >
                            <img
                              class="img-responsive"
                              alt=""
                              :src="`/storage/product_images/${product.data.image}`"
                              :data-echo="`/storage/product_images/${product.data.image}`"
                            />
                          </a>
                        </div>
                      </div>
                      <!-- /#owl-single-product-thumbnails -->
                    </div>
                    <!-- /.gallery-thumbs -->
                  </div>
                  <!-- /.single-product-gallery -->
                </div>
                <!-- /.gallery-holder -->
                <div class="col-sm-7 col-md-5 product-info-block">
                  <div class="product-info">
                    <h1 class="name">
                      {{ product.data.name }}
                    </h1>

                    <div class="stock-container info-container m-t-10">
                      <div class="row">
                        <div class="col-lg-12">
                          <div class="pull-left">
                            <div class="stock-box">
                              <span class="label">Availability :</span>
                            </div>
                          </div>
                          <div class="pull-left">
                            <div class="stock-box">
                              <span class="value">In Stock</span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- /.row -->
                    </div>
                    <!-- /.stock-container -->

                    <div class="price-container info-container m-t-20">
                      <div class="row">
                        <div class="col-sm-12 col-xs-12 col-md-6 col-lg-6">
                          <div class="price-box">
                            <span class="price">${{ product.data.price }}</span>
                            <span class="price-strike"></span>
                          </div>
                        </div>

                        <div class="col-sm-12 col-xs-12 col-md-6 col-lg-6">
                          <div class="favorite-button">
                            <a
                              class="btn btn-primary"
                              data-toggle="tooltip"
                              data-placement="right"
                              title="Wishlist"
                              href="#"
                            >
                              <i class="fa fa-heart"></i>
                            </a>
                            <a
                              class="btn btn-primary"
                              data-toggle="tooltip"
                              data-placement="right"
                              title="Add to Compare"
                              href="#"
                            >
                              <i class="fa fa-signal"></i>
                            </a>
                            <a
                              class="btn btn-primary"
                              data-toggle="tooltip"
                              data-placement="right"
                              title="E-mail"
                              href="#"
                            >
                              <i class="fa fa-envelope"></i>
                            </a>
                          </div>
                        </div>
                      </div>
                      <!-- /.row -->
                    </div>
                    <!-- /.price-container -->

                    <div class="quantity-container info-container">
                      <div class="row">
                        <div class="qty">
                          <span class="label">Qty :</span>
                        </div>

                        <div class="qty-count">
                          <div class="cart-quantity">
                            <div class="quant-input">
                              <div class="arrows">
                                <div
                                  class="arrow plus gradient"
                                  @click.prevent="cartForm.quantity++"
                                >
                                  <span class="ir"
                                    ><i class="icon fa fa-sort-asc"></i
                                  ></span>
                                </div>
                                <div
                                  class="arrow minus gradient"
                                  @click.prevent="
                                    cartForm.quantity > 0
                                      ? cartForm.quantity--
                                      : cartForm.quantity=1
                                  "
                                >
                                  <span class="ir"
                                    ><i class="icon fa fa-sort-desc"></i
                                  ></span>
                                </div>
                              </div>
                              <input type="text" v-model="cartForm.quantity" />
                            </div>
                          </div>
                        </div>

                        <div class="add-btn">
                          <a
                            href="#"
                            class="btn btn-primary"
                            @click.prevent="addProductToCart()"
                            ><i class="fa fa-shopping-cart inner-right-vs"></i>
                            Add to cart</a
                          >
                        </div>
                        <div class="add-btn">
                          <a href="#" class="btn btn-primary"
                            ><i class="fa fa-shopping-cart inner-right-vs"></i>
                            Buy</a
                          >
                        </div>
                      </div>
                      <!-- /.row -->

                      <!-- /.row -->
                    </div>
                    <!-- /.quantity-container -->
                  </div>
                  <!-- /.product-info -->
                </div>
                <!-- /.col-sm-7 -->
                <div class="col-lg-3 col-sm-12 col-md-3">
                  <div class="store-details">
                    <img alt="" src="/images/brands/store.png" />
                    <h2>
                      <a href="#">{{ product.data.shop.name }}</a>
                    </h2>
                    <p>
                      {{ product.data.shop.description }}
                    </p>
                  </div>
                </div>
              </div>
              <!-- /.row -->
            </div>

            <div class="product-tabs inner-bottom-xs wow fadeInUp">
              <div class="row">
                <div class="col-sm-3">
                  <ul id="product-tabs" class="nav nav-tabs nav-tab-cell">
                    <li class="active">
                      <a data-toggle="tab" href="#description">Description</a>
                    </li>
                    <li><a data-toggle="tab" href="#vendor">Vendor</a></li>
                  </ul>
                  <!-- /.nav-tabs #product-tabs -->
                </div>
                <div class="col-sm-9">
                  <div class="tab-content">
                    <div id="description" class="tab-pane in active">
                      <div class="product-tab">
                        <p class="text">
                          {{ product.data.desc }}
                        </p>
                      </div>
                    </div>
                    <!-- /.tab-pane -->
                    <div id="vendor" class="tab-pane">
                      <div class="product-tab">
                        <h3>{{ product.data.shop.name }}</h3>
                        <p class="text">
                          {{ product.data.shop.description }}<br />

                          <a :href="`/shop/${product.data.shop.id}`"
                            >More Products from Amazon</a
                          >
                        </p>
                      </div>
                    </div>
                  </div>
                  <!-- /.tab-content -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.product-tabs -->

            <!-- ============================================== RELATED PRODUCTS ============================================== -->
            <section class="section wow fadeInUp">
              <h3 class="section-title">Related Products</h3>

              <div class="new-arriavls">
                <div
                  class="
                    owl-carousel
                    home-owl-carousel
                    custom-carousel
                    owl-theme
                    outer-top-xs
                  "
                >
                  <div
                    v-for="product in r_products.data"
                    :key="product.id"
                    class="item item-carousel"
                  >
                    <div class="products">
                      <product-card :product="product"></product-card>
                      <!-- /.product -->
                    </div>
                    <!-- /.products -->
                  </div>
                </div>
                <!-- /.home-owl-carousel -->
              </div>
            </section>
            <!-- /.section -->
            <!-- ============================================== RELATED PRODUCTS : END ============================================== -->
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
  props: ["product", "colors", "sizes", "r_products"],
  components: {
    AppLayout,
    FooterNav,
    ProductCard,
  },
  mixins: [CartService],
  data() {
    return {
      cartForm: this.$inertia.form({
        id: this.product.data.id,
        name: this.product.data.name,
        price: this.product.data.price,
        quantity: 1,
        image: this.product.data.image,
      }),
    };
  },
  mounted() {
    // this.filterByPriceRange();
  },

  methods: {
    addProductToCart() {
      this.cartForm.post(this.route("cart.store"), {
        onSuccess: () => {
          console.log("zvaenda");
        },
      });
    },
  },
};
</script>
