<template>
  <app-layout title="Dashboard">
    <div class="body-content outer-top-ts">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <!-- /.breadcrumb -->
            <div class="shopping-cart">
              <div class="shopping-cart-table">
                <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th class="cart-romove item">Remove</th>
                        <th class="cart-description item">Image</th>
                        <th class="cart-product-name item">Product Name</th>
                        <th class="cart-edit item">Update</th>
                        <th class="cart-qty item">Quantity</th>
                        <th class="cart-sub-total item">Subtotal</th>
                      </tr>
                    </thead>
                    <!-- /thead -->

                    <tbody>
                      <tr
                        v-for="item in this.$page.props.cart.cart"
                        :key="item.id"
                      >
                        <td class="romove-item">
                          <a
                            href="#"
                            title="cancel"
                            class="icon"
                            @click.prevent="removeCartItem(item.id)"
                            ><i class="fa fa-trash-o"></i
                          ></a>
                        </td>
                        <td class="cart-image">
                          <a
                            class="entry-thumbnail"
                            :href="`/product/${item.id}`"
                          >
                            <img
                              :src="`/storage/product_images/${item.attributes.image}`"
                              alt=""
                            />
                          </a>
                        </td>
                        <td class="cart-product-name-info">
                          <h4 class="cart-product-description">
                            <a :href="`/product/${item.id}`">{{ item.name }}</a>
                          </h4>

                          <!-- /.row -->
                          <div class="cart-product-info">
                            <span class="product-color"
                              >Qty:<span>{{
                                item.quantity + "x" + item.price
                              }}</span></span
                            >
                          </div>
                        </td>
                        <td class="cart-product-edit">
                          <a
                            href="#"
                            @click="updateCartSingle(item)"
                            class="product-edit"
                            >Update</a
                          >
                        </td>
                        <td class="cart-product-quantity">
                          <div class="quant-input">
                            <div class="arrows">
                              <div
                                class="arrow plus gradient"
                                @click.prevent="item.quantity++"
                              >
                                <span class="ir"
                                  ><i class="icon fa fa-sort-asc"></i
                                ></span>
                              </div>
                              <div
                                class="arrow minus gradient"
                                @click.prevent="item.quantity--"
                              >
                                <span class="ir"
                                  ><i class="icon fa fa-sort-desc"></i
                                ></span>
                              </div>
                            </div>
                            <input type="text" v-model="item.quantity" />
                          </div>
                        </td>
                        <td class="cart-product-sub-total">
                          <span class="cart-sub-total-price"
                            >${{ item.quantity * item.price }}</span
                          >
                        </td>
                      </tr>
                    </tbody>
                    <!-- /tbody -->

                    <tfoot>
                      <tr>
                        <td colspan="7">
                          <div class="shopping-cart-btn">
                            <span class="">
                              <a
                                :href="'/main-shop'"
                                class="btn btn-upper btn-primary outer-left-xs"
                                >Continue Shopping</a
                              >
                              <a
                                href="#"
                                @click.prevent="updateBulkCart()"
                                class="
                                  btn btn-upper btn-primary
                                  pull-right
                                  outer-right-xs
                                "
                                >Update shopping cart</a
                              >
                            </span>
                          </div>
                          <!-- /.shopping-cart-btn -->
                        </td>
                      </tr>
                    </tfoot>
                  </table>
                  <!-- /table -->
                </div>
              </div>
              <!-- /.shopping-cart-table -->
              <div class="col-md-4 col-sm-12 estimate-ship-tax"></div>
              <!-- /.estimate-ship-tax -->

              <div class="col-md-4 col-sm-12 estimate-ship-tax">
                <!-- /table -->
              </div>
              <!-- /.estimate-ship-tax -->

              <div class="col-md-4 col-sm-12 cart-shopping-total">
                <table class="table">
                  <thead>
                    <tr>
                      <th>
                        <div class="cart-sub-total">
                          Total<span class="inner-left-md"
                            >${{ this.$page.props.cart.cartTotalPrice }}</span
                          >
                        </div>
                      </th>
                    </tr>
                  </thead>
                  <!-- /thead -->
                  <tbody>
                    <tr>
                      <td>
                        <div class="cart-checkout-btn pull-right">
                          <a
                            :href="'/products/checkout'"
                            class="btn btn-primary checkout-btn"
                          >
                            PROCCED TO CHEKOUT
                          </a>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                  <!-- /tbody -->
                </table>
                <!-- /table -->
              </div>
              <!-- /.cart-shopping-total -->
            </div>
            <!-- /.shopping-cart -->
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
    };
  },
  mixins: [CartService],

  methods: {
    removeCartItem(id) {
      var form = this.$inertia.form({
        id: id,
      });
      form.delete(this.route("cart.destroy", id));
    },

    updateCartSingle(item) {
      var form = this.$inertia.form({
        id: item.id,
        quantity: item.quantity,
        price: item.price,
      });
      form.put(this.route("cart.update", item.id));
    },

    updateBulkCart() {
      var form = this.$inertia.form({
        items: this.$page.props.cart.cart,
      });
      form.put(this.route("bulk-cart.update"));
    },
  },
};
</script>
