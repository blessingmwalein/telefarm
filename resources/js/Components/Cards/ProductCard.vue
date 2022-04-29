<template>
  <div class="product">
    <div class="product-image">
      <div class="image">
        <a :href="`/shop/${product.shop.id}`">
          <img :src="`/storage/product_images/${product.image}`" alt="" />
        </a>
      </div>
      <!-- /.image -->

      <div class="tag new"><span>-15%</span></div>
    </div>
    <!-- /.product-image -->

    <div class="product-info text-left">
      <div class="brand">
        <a :href="`/shop/${product.shop.id}`">{{ product.shop.name }}</a>
      </div>
      <h3 class="name">
        <a :href="`/product/${product.id}`">{{ product.name }}</a>
      </h3>
      <!-- <div class="rating rateit-small"></div> -->
      <div class="description">
        {{ product.desc }}
      </div>
      <div class="product-price">
        <span class="price"> ${{ product.price }} </span>
        <span class="price-before-discount">$ 800</span>
      </div>
      <!-- /.product-price -->
    </div>
    <!-- /.product-info -->
    <div class="cart clearfix animate-effect">
      <div class="action">
        <ul class="list-unstyled">
          <li class="add-cart-button btn-group">
            <button
              data-toggle="tooltip"
              class="btn btn-primary icon"
              type="button"
              title="Add Cart"
              @click="addProductToCart()"
            >
              <i class="fa fa-shopping-cart"></i>
            </button>
            <button class="btn btn-primary cart-btn" type="button">
              Add to cart
            </button>
          </li>
          <li class="lnk wishlist">
            <a
              data-toggle="tooltip"
              class="add-to-cart"
              href="#"
              title="Wishlist"
            >
              <i class="icon fa fa-heart"></i>
            </a>
          </li>
          <li class="lnk">
            <a
              data-toggle="tooltip"
              class="add-to-cart"
              :href="`/product/${product.id}`"
              title="View Product"
            >
              <i class="fa fa-eye" aria-hidden="true"></i>
            </a>
          </li>
        </ul>
      </div>
      <!-- /.action -->
    </div>
    <!-- /.cart -->
  </div>
</template>

<script>
export default {
  props: ["product"],
  data() {
    return {
      cartForm: this.$inertia.form({
        id: this.product.id,
        name: this.product.name,
        price: this.product.price,
        quantity: 1,
        image: this.product.image,
      }),
    };
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

<style>
</style>
