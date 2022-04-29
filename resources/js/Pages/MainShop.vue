<template>
  <app-layout title="Dashboard">
       <div class="breadcrumb">
      <div class="container">
        <div class="breadcrumb-inner">
          <ul class="list-inline list-unstyled">
            <li><a href="/">Home</a></li>

            <li class="active">Shop</li>
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
            <div
              class="side-menu side-menu-inner animate-dropdown outer-bottom-xs"
            >
              <div class="head">Categories</div>
              <nav class="yamm megamenu-horizontal">
                <ul class="nav">
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
                            <ul class="links list-unstyled">
                              <li
                                v-for="sub_category in chunk_item"
                                :key="sub_category.id"
                              >
                                <a href="#" @click.prevent="setProducts(sub_category)">{{ sub_category.name }}</a>
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
            <div class="sidebar-module-container">
              <div class="sidebar-filter">
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


            <div class="clearfix filters-container m-t-10">
              <div class="row">
                <div class="col col-sm-6 col-md-3 col-lg-3 col-xs-6">
                  <div class="filter-tabs">
                    <ul
                      id="filter-tabs"
                      class="nav nav-tabs nav-tab-box nav-tab-fa-icon"
                    >
                      <li class="active">
                        <a data-toggle="tab" href="#grid-container"
                          ><i class="icon fa fa-th-large"></i>Grid</a
                        >
                      </li>
                      <li>
                        <a data-toggle="tab" href="#list-container"
                          ><i class="icon fa fa-bars"></i>List</a
                        >
                      </li>
                    </ul>
                  </div>
                  <!-- /.filter-tabs -->
                </div>
                <!-- /.col -->

                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <div class="search-result-container">
              <div id="myTabContent" class="tab-content category-list">
                <div class="tab-pane active" id="grid-container">
                  <div class="category-product">
                    <div class="row">
                      <div v-for="product in new_products" :key="product.id" class="col-sm-3 col-md-3 col-lg-3 wow fadeInUp">
                        <div class="item">
                          <div class="products">
                            <product-card :product="product"></product-card>
                            <!-- /.product -->
                          </div>
                          <!-- /.products -->
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

                <div class="tab-pane" id="list-container">
                  <div class="category-product">
                    <div v-for="product in new_products" :key="product.id" class="category-product-inner">
                      <div class="products">
                         <list-product-card :product="product"></list-product-card>
                        <!-- /.product-list -->
                      </div>
                      <!-- /.products -->
                    </div>
                    <!-- /.category-product-inner -->

                    <!-- /.category-product-inner -->
                  </div>
                  <!-- /.category-product -->
                </div>
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
import ListProductCard from '@/Components/Cards/ListProductCard.vue';

export default {
  props: ["shop", "categories", "shops", "colors", "products"],
  components: {
    AppLayout,
    FooterNav,
    ProductCard,
    ListProductCard,
  },
  data() {
    return {
      activeTabe: "All",
      new_products: this.products.data,
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
