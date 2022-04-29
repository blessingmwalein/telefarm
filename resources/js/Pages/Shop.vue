<template>
  <app-layout title="Dashboard">
    <div class="breadcrumb">
      <div class="container">
        <div class="breadcrumb-inner">
          <ul class="list-inline list-unstyled">
            <li><a href="/">Home</a></li>
            <li><a href="/main-shop">Shop</a></li>
            <li class="active">{{shop.data.name}}</li>
          </ul>
        </div>
        <!-- /.breadcrumb-inner -->
      </div>
      <!-- /.container -->
    </div>
    <div class="body-content outer-top-ts"></div>
    <div class="body-content outer-top-ts" id="top-banner-and-menu">
      <div class="container">
        <div class="row">
          <!-- ============================================== SIDEBAR ============================================== -->
          <div class="col-md-3 sidebar">
            <div class="store-box">
              <img
                class="img-responsive"
                src="assets/images/brands/brand1.png"
                alt=""
              />
              <h2>
                <a href="#">{{ shop.data.name }}</a>
              </h2>
              <div class="mail-box">
                <a href="#">{{ shop.data.user.email }}</a>
              </div>
              <div class="social">
                <ul class="link">
                  <li class="fb">
                    <a
                      target="_blank"
                      rel="nofollow"
                      href="#"
                      title="Facebook"
                    ></a>
                  </li>
                  <li class="tw">
                    <a
                      target="_blank"
                      rel="nofollow"
                      href="#"
                      title="Twitter"
                    ></a>
                  </li>
                  <li class="googleplus">
                    <a
                      target="_blank"
                      rel="nofollow"
                      href="#"
                      title="GooglePlus"
                    ></a>
                  </li>
                  <li class="rss">
                    <a target="_blank" rel="nofollow" href="#" title="RSS"></a>
                  </li>
                </ul>
              </div>
              <p>{{ shop.data.description }}</p>
            </div>
            <div class="sidebar-module-container">
              <div class="sidebar-filter">
                <!-- ============================================== SIDEBAR CATEGORY ============================================== -->
                <div
                  class="sidebar-widget wow fadeInUp animated"
                  style="visibility: visible; animation-name: fadeInUp"
                >
                  <h3 class="section-title">Shop by</h3>
                  <div class="widget-header">
                    <h4 class="widget-title">Category</h4>
                  </div>
                  <div class="sidebar-widget-body">
                    <div class="accordion">
                      <div
                        v-for="(category, index) in categories.data"
                        :key="category.id"
                        class="accordion-group"
                      >
                        <div class="accordion-heading">
                          <a
                            :href="`#${index}`"
                            data-toggle="collapse"
                            class="accordion-toggle collapsed"
                          >
                            {{ category.name }}
                          </a>
                        </div>
                        <!-- /.accordion-heading -->
                        <div
                          class="accordion-body collapse"
                          :id="`${index}`"
                          style="height: 0px"
                        >
                          <div class="accordion-inner">
                            <ul>
                              <li
                                v-for="sub_category in category.sub_categories"
                                :key="sub_category.id"
                              >
                                <a
                                  href="#"
                                  @click.prevent="setProducts(sub_category)"
                                  >{{ sub_category.name }}</a
                                >
                              </li>
                            </ul>
                          </div>
                          <!-- /.accordion-inner -->
                        </div>
                        <!-- /.accordion-body -->
                      </div>
                    </div>
                    <!-- /.accordion -->
                  </div>
                  <!-- /.sidebar-widget-body -->
                </div>
                <!-- /.sidebar-widget -->

                <div
                  class="sidebar-widget wow fadeInUp animated"
                  style="visibility: visible; animation-name: fadeInUp"
                >
                  <div class="widget-header">
                    <h4 class="widget-title">Price Filter</h4>
                  </div>
                  <div class="sidebar-widget-body m-t-10">
                    <div class="price-range-holder">
                      <div class="row g-3">
                        <div class="col-md-6 mb-3">
                          <input
                            type="number"
                            class="form-control"
                            id="validationServer01"
                            v-model="price.lower"
                          />
                        </div>
                        <div class="col-md-6 mb-3">
                          <input
                            type="number"
                            v-model="price.higher"
                            class="form-control"
                          />
                        </div>
                      </div>
                    </div>
                    <!-- /.price-range-holder -->
                    <a
                      @click.prevent="filterByPriceRange()"
                      class="lnk btn btn-primary"
                      >Filter</a
                    >
                  </div>
                  <!-- /.sidebar-widget-body -->
                </div>

                <div
                  class="sidebar-widget wow fadeInUp animated"
                  style="visibility: visible; animation-name: fadeInUp"
                >
                  <div class="widget-header">
                    <h4 class="widget-title">Colors</h4>
                  </div>
                  <div class="sidebar-widget-body">
                    <ul class="list">
                      <li v-for="color in colors" :key="color.id">
                        <a href="#">{{ color.name }}</a>
                      </li>
                    </ul>
                  </div>
                  <!-- /.sidebar-widget-body -->
                </div>

                <div
                  class="
                    sidebar-widget
                    product-tag
                    wow
                    fadeInUp
                    outer-top-vs
                    animated
                  "
                  style="visibility: visible; animation-name: fadeInUp"
                >
                  <h3 class="section-title">Other Shops</h3>
                  <div class="sidebar-widget-body outer-top-xs">
                    <div class="tag-list">
                      <a
                        v-for="shop in shops.data"
                        :key="shop.id"
                        class="item"
                        title="Phone"
                        :href="`/shop/${shop.id}`"
                        >{{ shop.name }}</a
                      >
                    </div>
                    <!-- /.tag-list -->
                  </div>
                  <!-- /.sidebar-widget-body -->
                </div>
                <!-- /.sidebar-widget -->
              </div>
              <!-- /.sidebar-filter -->
            </div>
            <!-- /.sidebar-module-container -->
          </div>
          <!-- /.sidemenu-holder -->

          <div class="col-md-9 rht-col">
            <div class="search-result-container">
              <div id="myTabContent" class="tab-content category-list">
                <div class="tab-pane active" id="grid-container">
                  <div class="category-product">
                    <div class="row">
                      <div
                        v-for="product in new_products"
                        :key="product.id"
                        class="col-sm-3 col-md-3 col-lg-3 wow fadeInUp"
                      >
                        <div class="item">
                          <div class="products">
                            <product-card :product="product"></product-card>
                          </div>
                        </div>
                      </div>

                      <!-- /.item -->

                      <!-- /.item -->
                    </div>
                    <!-- /.row -->
                  </div>
                  <!-- /.category-product -->
                </div>
                <!-- /.tab-pane -->

                <!-- /.tab-pane #list-container -->
              </div>
              <!-- /.tab-content -->
              <div class="clearfix filters-container bottom-row">
                <div class="text-right">
                  <div class="pagination-container">
                    <ul class="list-inline list-unstyled">
                      <li class="prev">
                        <a href="#"><i class="fa fa-angle-left"></i></a>
                      </li>
                      <li><a href="#">1</a></li>
                      <li class="active"><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li class="next">
                        <a href="#"><i class="fa fa-angle-right"></i></a>
                      </li>
                    </ul>
                    <!-- /.list-inline -->
                  </div>
                  <!-- /.pagination-container -->
                </div>
                <!-- /.text-right -->
              </div>
              <!-- /.filters-container -->
            </div>
            <!-- /.search-result-container -->
          </div>
          <!-- /.col -->
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

export default {
  props: ["shop", "categories", "shops", "colors"],
  components: {
    AppLayout,
    FooterNav,
    ProductCard,
  },
  data() {
    return {
      activeTabe: "All",
      new_products: this.shop.data.products,
      price: {
        lower: 0,
        higher: 200,
      },
    };
  },
  mounted() {
    // this.filterByPriceRange();
  },

  methods: {
    setProducts(sub_category) {
      // console.log('clicked');
      console.log(sub_category.products);
      this.new_products = sub_category.products;
    },

    filterByPriceRange() {
      let new_list = [];
      let lower = this.price.lower;
      let higher = this.price.higher;
      this.new_products.filter(function (x) {
        console.log(x.price);
        if (x.price >= lower && x.price <= higher) {
          new_list.push(x);
        }
      });

      this.new_products = new_list;
    },
  },
};
</script>
