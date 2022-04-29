import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
//Install the plugin
Vue.use(Vuex)
//Create object
let cart = window.localStorage.getItem('cart');
let cartCount = window.localStorage.getItem('cartCount');

const store = new Vuex.Store({

    state: {
        cart: cart ? JSON.parse(cart) : cart ? JSON.parse(cart) : [],
        cartCount: cartCount ? parseInt(cartCount) : 0,
        isCart: cart ? [] : localStorage.setItem('cart', JSON.stringify([]))
    },

    mutations: {
        addToCart(state, item) {
            let found = state.cart.find(product => product.id == item.id);

            if (found) {
                found.properties.quantity++;
            } else {
                state.cart.push(item);

                Vue.set(item, 'quantity', 1);
                Vue.set(item, 'totalPrice', item.price);
            }

            state.cartCount++;
        },
        removeFromCart(state, item) {
            let index = state.cart.indexOf(item);

            if (index > -1) {
                let product = state.cart[index];
                state.cartCount -= product.properties.quantity;

                state.cart.splice(index, 1);
            }
        },
        saveCart(state) {
            window.localStorage.setItem('cart', JSON.stringify(state.cart));
            window.localStorage.setItem('cartCount', state.cartCount);
        }
    },
    computed: {
        totalPrice() {
            let total = 0;
            for (let item of this.$store.state.cart) {
                total += item.totalPrice;
            }
            return total.toFixed(2);
        }
    }
})

//Export store
export default store
