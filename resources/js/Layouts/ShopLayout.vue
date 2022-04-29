<template>
    <side-nav></side-nav>
    <main
        class="main-content position-relative max-height-vh-100 h-100 border-radius-lg"
    >
        <header-nav :title="title"></header-nav>

        <slot></slot>
    </main>
</template>

<script>
// import JetApplicationMark from "@/Jetstream/ApplicationMark.vue";
// import JetBanner from "@/Jetstream/Banner.vue";
// import JetDropdown from "@/Jetstream/Dropdown.vue";
// import JetDropdownLink from "@/Jetstream/DropdownLink.vue";
// import JetNavLink from "@/Jetstream/NavLink.vue";
// import JetResponsiveNavLink from "@/Jetstream/ResponsiveNavLink.vue";
import SideNav from "@/Pages/Shop/Components/SideNav.vue";
import HeaderNav from "@/Pages/Shop/Components/TopNav.vue";
// import { Head, Link } from "@inertiajs/inertia-vue3";
export default {
    props: ["title"],
    components: {
        HeaderNav,
        SideNav,
    },
    data() {
        return {
            showingNavigationDropdown: false,
        };
    },

    methods: {
        logout() {
            //   this.$inertia.get(route("cart.index")).;
        },
    },

    watch: {
        "$page.props.flash": {
            handler() {
                this.$page.props.flash.success
                    ? this.$swal(this.$page.props.flash.success, "", "success")
                    : "";
                this.$page.props.flash.error
                    ? this.$swal(this.$page.props.flash.error, "", "error")
                    : "";
                this.show = true;
            },
            deep: true,
        },
    },
};
</script>
