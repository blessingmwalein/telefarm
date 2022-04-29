<template>
  <div class="dropdown dropdown-cart">
    <a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
      <div class="items-cart-inner">
        <div class="basket">
          <i class="glyphicon glyphicon-shopping-cart"></i>
        </div>
        <div class="basket-item-count">
          <span class="count">{{ this.$page.props.cart.auth?  this.$page.props.cart.cartTotal :0 }}</span>
        </div>
        <div class="total-price-basket">
          <span class="lbl">My Cart</span>
        </div>
      </div>
    </a>
    <ul class="dropdown-menu">
      <li v-if="this.$page.props.cart.auth">
        <div
          v-for="item in this.$page.props.cart.cart"
          :key="item.id"
          class="cart-item product-summary"
        >
          <div class="row">
            <div class="col-xs-4">
              <div class="image">
                <a :href="`/product/${item.id}`"
                  ><img
                    :src="`/storage/product_images/${item.attributes.image}`"
                    alt=""
                /></a>
              </div>
            </div>
            <div class="col-xs-7">
              <h3 class="name">
                <a href="#">{{ item.name }}</a>
              </h3>
              <div class="price">${{ item.quantity * item.price }}</div>
            </div>
            <div class="col-xs-1 action">
              <a href="#" @click.prevent="removeCartItem(item.id)"
                ><i class="fa fa-trash"></i
              ></a>
            </div>
          </div>
        </div>
        <!-- /.cart-item -->
        <div class="clearfix"></div>
        <hr />
        <div class="clearfix cart-total" v-if="this.$page.props.cart.auth">
          <div class="pull-right">
            <span class="text">Sub Total :</span
            ><span class="price"
              >${{ this.$page.props.cart.cartTotalPrice }}</span
            >
          </div>
          <div class="clearfix"></div>
          <a
            href="/products/cart"
            class="btn btn-upper btn-primary btn-block m-t-20"
            >View Cart</a
          >
          <a
            href="/products/checkout"
            class="btn btn-upper btn-primary btn-block m-t-20 btn-check"
            >Checkout</a
          >
        </div>
        <!-- /.cart-total-->
      </li>
       <li v-else>
           <div>Log In</div>
       </li>
    </ul>
    <!-- /.dropdown-menu-->
  </div>
</template>

<script>
// import CartService from "@/Mixins/Cart";
export default {
  //   mixins: [CartService],
  mounted() {
    // console.log(this.cart);
  },
  data() {
    return {
      form: this.$inertia.form({
        id: null,
      }),
    };
  },

  computed: {},
  methods: {
    removeCartItem(id) {
      this.form.id = id;
      this.form.delete(this.route("cart.destroy", id));
    },
  },
};
</script>

<style>
</style>
