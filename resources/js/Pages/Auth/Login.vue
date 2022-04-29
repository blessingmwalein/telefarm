<template>
  <app-layout title="Dashboard">
    <div class="breadcrumb">
      <div class="container">
        <div class="breadcrumb-inner">
          <ul class="list-inline list-unstyled">
            <li><a href="/">Home</a></li>
            <li class="active">Login</li>
          </ul>
        </div>
      </div>
    </div>
    <div class="body-content outer-top-ts">
      <div class="container">
        <div class="row">
          <div class="col-md-3"></div>
          <div class="col-md-6">
            <div class="sign-in-page">
              <div class="row">
                <div class="col-md-12 col-sm-12 sign-in">
                  <h4 class="">Sign in</h4>
                  <jet-validation-errors class="mb-4" />

                  <form
                    class="register-form outer-top-xs"
                    role="form"
                    @submit.prevent="submit"
                  >
                    <div class="form-group">
                      <label class="info-title" for="exampleInputEmail1"
                        >Email Address <span>*</span></label
                      >
                      <input
                        type="email"
                        class="form-control"
                        id="exampleInputEmail1"
                        v-model="form.email" required autofocus
                      />
                    </div>
                    <div class="form-group">
                      <label class="info-title" for="exampleInputPassword1"
                        >Password <span>*</span></label
                      >
                      <input
                        type="password"
                        class="form-control"
                        id="exampleInputPassword1"
                        v-model="form.password" required autocomplete="current-password"
                      />
                    </div>
                    <div class="radio outer-xs">
                      <label>
                        <input
                          type="radio"
                          name="optionsRadios"
                          id="optionsRadios2"
                          v-model="form.remember"

                        />Remember me!
                      </label>
                      <a  v-if="canResetPassword" :href="route('password.request')" class="forgot-password pull-right"
                        >Forgot your Password?</a
                      >
                    </div>
                    <button
                      type="submit"
                      class="btn-upper btn btn-primary checkout-page-button"
                      :class="{ 'opacity-25': form.processing }"
                      :disabled="form.processing"
                    >
                      Login
                    </button>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3"></div>
        </div>
      </div>

      <footer id="footer" class="footer color-bg">
        <div class="footer-bottom">
          <div class="container">
            <div class="row">
              <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="module-heading">
                  <h4 class="module-title">Help and Support</h4>
                </div>
                <!-- /.module-heading -->

                <div class="module-body">
                  <ul class="list-unstyled">
                    <li class="first">
                      <a href="#" title="Contact us">Term of Use</a>
                    </li>
                    <li><a href="#" title="About us">Search Terms</a></li>
                    <li><a href="#" title="faq">Store Location</a></li>
                    <li>
                      <a href="#" title="Popular Searches"
                        >Orders and Returns</a
                      >
                    </li>
                    <li class="last">
                      <a href="#" title="Where is my order?">Deliveries</a>
                    </li>
                  </ul>
                </div>
                <!-- /.module-body -->
              </div>
              <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="module-heading">
                  <h4 class="module-title">Customer Service</h4>
                </div>
                <!-- /.module-heading -->

                <div class="module-body">
                  <ul class="list-unstyled">
                    <li class="first">
                      <a href="#" title="Contact us">My Account</a>
                    </li>
                    <li><a href="#" title="About us">Order History</a></li>
                    <li><a href="#" title="faq">FAQ</a></li>
                    <li><a href="#" title="Popular Searches">Specials</a></li>
                    <li class="last">
                      <a href="#" title="Where is my order?">Help Center</a>
                    </li>
                  </ul>
                </div>
                <!-- /.module-body -->
              </div>
              <!-- /.col -->

              <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="module-heading">
                  <h4 class="module-title">Corporation</h4>
                </div>
                <!-- /.module-heading -->

                <div class="module-body">
                  <ul class="list-unstyled">
                    <li class="first">
                      <a title="Your Account" href="#">About us</a>
                    </li>
                    <li>
                      <a title="Information" href="#">Customer Service</a>
                    </li>
                    <li><a title="Addresses" href="#">Company</a></li>
                    <li>
                      <a title="Addresses" href="#">Investor Relations</a>
                    </li>
                    <li class="last">
                      <a title="Orders History" href="#">Advanced Search</a>
                    </li>
                  </ul>
                </div>
                <!-- /.module-body -->
              </div>
              <!-- /.col -->

              <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="module-heading">
                  <h4 class="module-title">Why Choose Us</h4>
                </div>
                <!-- /.module-heading -->

                <div class="module-body">
                  <ul class="list-unstyled">
                    <li class="first">
                      <a href="#" title="About us">Shopping Guide</a>
                    </li>
                    <li><a href="#" title="Blog">Blog</a></li>
                    <li><a href="#" title="Company">Company</a></li>
                    <li>
                      <a href="#" title="Investor Relations"
                        >Investor Relations</a
                      >
                    </li>
                    <li class="last">
                      <a href="contact-us.html" title="Suppliers">Contact Us</a>
                    </li>
                  </ul>
                </div>
                <!-- /.module-body -->
              </div>
            </div>
          </div>
        </div>
        <div class="copyright-bar">
          <div class="container">
            <div class="col-xs-12 col-sm-7 del-info">
              We have our very own fleet of delivery vans. Your order will be
              packed with care at our warehouse and delivered right to your door
              by our friendly DealDots team.
            </div>

            <div class="col-xs-12 col-sm-5 no-padding">
              <div class="clearfix payment-methods">
                <ul>
                  <li><img src="assets/images/payments/1.png" alt="" /></li>
                  <li><img src="assets/images/payments/2.png" alt="" /></li>
                  <li><img src="assets/images/payments/3.png" alt="" /></li>
                  <li><img src="assets/images/payments/4.png" alt="" /></li>
                </ul>
              </div>
              <!-- /.payment-methods -->
            </div>
          </div>
        </div>
        <div class="copyright-bar">
          <div class="container">
            <div class="col-xs-12 col-sm-12 no-padding social">
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
                <li class="pintrest">
                  <a
                    target="_blank"
                    rel="nofollow"
                    href="#"
                    title="PInterest"
                  ></a>
                </li>
                <li class="linkedin">
                  <a
                    target="_blank"
                    rel="nofollow"
                    href="#"
                    title="Linkedin"
                  ></a>
                </li>
                <li class="youtube">
                  <a
                    target="_blank"
                    rel="nofollow"
                    href="#"
                    title="Youtube"
                  ></a>
                </li>
              </ul>
            </div>
            <div class="col-xs-12 col-sm-12 no-padding copyright">
              &copy; 2019 ThemesGround. All Rights Reserved.
            </div>
          </div>
        </div>
      </footer>
    </div>
  </app-layout>
</template>

<script>
import AppLayout from "@/Layouts/AppLayout.vue";
import JetAuthenticationCard from "@/Jetstream/AuthenticationCard.vue";
import JetAuthenticationCardLogo from "@/Jetstream/AuthenticationCardLogo.vue";
import JetButton from "@/Jetstream/Button.vue";
import JetInput from "@/Jetstream/Input.vue";
import JetCheckbox from "@/Jetstream/Checkbox.vue";
import JetLabel from "@/Jetstream/Label.vue";
import JetValidationErrors from "@/Jetstream/ValidationErrors.vue";
import { Head, Link } from "@inertiajs/inertia-vue3";
export default {
  components: {
    AppLayout,
    Head,
    JetAuthenticationCard,
    JetAuthenticationCardLogo,
    JetButton,
    JetInput,
    JetCheckbox,
    JetLabel,
    JetValidationErrors,
    Link,
  },

  props: {
    canResetPassword: Boolean,
    status: String,
  },

  data() {
    return {
      form: this.$inertia.form({
        email: "",
        password: "",
        remember: false,
      }),
    };
  },

  methods: {
    submit() {
      this.form
        .transform((data) => ({
          ...data,
          remember: this.form.remember ? "on" : "",
        }))
        .post(this.route("login"), {
          onFinish: () => {
            this.form.reset("password")
            // location.reload()
            },
        });
    },
  },
};
</script>
<style lang="css" scoped>
</style>>
