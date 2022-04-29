
<script>
let cart = localStorage.getItem("cart");
let cartCount = localStorage.getItem("cartCount");

export default {
  name: "Cart",
  data() {
    return {
      cart: cart ? JSON.parse(cart) : cart ? JSON.parse(cart) : [],
      cartCount: 0,
      isCart: cart ? [] : localStorage.setItem("cart", JSON.stringify([])),
      message: "",
    };
  },
  mounted() {
    this.cartTotalCount();
  },
  methods: {
    addToCart(item) {
      let found = this.cart.find((product) => product.id == item.id);

      if (found) {
        let prop_found = found.properties.find(
          (prop) => prop.sku == item.properties[0].sku
        );
        if (prop_found) {
          prop_found.quantity =
            parseInt(prop_found.quantity) +
            parseInt(item.properties[0].quantity);
          this.message = "Product Incremented";
          alert("Product Incremented");
        } else {
          found.properties.push(item.properties[0]);
          alert("Property Added");
        }
      } else {
        this.cart.push(item);
        this.message = "Product added to cart";
        alert("Product added to cart");
        // Vue.set(item, "quantity", 1);
        // Vue.set(item, "totalPrice", item.price);
      }
      this.cartCount++;
      this.saveCart();
      console.log("zvaita wangu");
    },
    removeFromCart(item) {
      let index = this.cart.indexOf(item);

      if (confirm(`Delete ${item.name} from your cart?`)) {
        if (index > -1) {
          let product = this.cart[index];
          this.cartCount--;

          this.cart.splice(index, 1);
          alert(`Item ${item.name} removed from cart`);
        }
        this.saveCart();
      } else {
        this.saveCart();
      }
    },
    saveCart() {
      window.localStorage.setItem("cart", JSON.stringify(this.cart));
      window.localStorage.setItem("cartCount", this.cartCount);
    },
    cartTotalCount() {
      let total = 0;
      for (let item of this.cart) {
        item.properties.forEach((prop) => {
          total = total + parseInt(prop.quantity);
        });
      }
      // return total;
      this.cartCount;
    },
  },
  computed: {
    totalPrice() {
      let total = 0;
      for (let item of this.cart) {
        item.properties.forEach((prop) => {
          total = total + item.price * parseInt(prop.quantity);
        });
      }
      return total.toFixed(2);
    },
  },
};
</script>

<style>
</style>