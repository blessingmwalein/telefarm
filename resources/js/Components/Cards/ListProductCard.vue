<template>
  <div class="product-list product">
    <div class="row product-list-row">
      <div class="col col-sm-3 col-lg-3">
        <div class="product-image">
          <div class="image">
            <img :src="`/storage/product_images/${product.image}`" alt="" />
          </div>
        </div>
        <!-- /.product-image -->
      </div>
      <!-- /.col -->
      <div class="col col-sm-9 col-lg-9">
        <div class="product-info">
          <h3 class="name">
            <a href="#">{{ product.name }}</a>
          </h3>
          <div class="product-price">
            <span class="price"> ${{ product.price }}</span>
            <span class="price-before-discount">$ {{ product.price }}</span>
          </div>
          <!-- /.product-price -->
          <div class="description m-t-10">
            {{ product.desc }}
          </div>
          <div class="cart clearfix animate-effect">
            <div class="action">
              <ul class="list-unstyled">
                <li class="add-cart-button btn-group">
                  <button
                    class="btn btn-primary icon"
                    data-toggle="dropdown"
                    @click="addProductToCart(product)"
                    type="button"
                  >
                    <i class="fa fa-shopping-cart"></i>
                  </button>
                  <button class="btn btn-primary cart-btn" type="button">
                    Add to cart
                  </button>
                </li>
                <li class="lnk wishlist">
                  <a class="add-to-cart" href="#" title="Wishlist">
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
        <!-- /.product-info -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.product-list-row -->
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
