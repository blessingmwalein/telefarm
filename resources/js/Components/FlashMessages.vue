<template>
  <div></div>
</template>

<script>
export default {
  data() {
    return {
      show: true,
    };
  },
  watch: {
    "$page.props.flash": {
      handler() {
        this.$page.props.flash.success
          ? this.$swal(this.$page.props.flash.success)
          : "";
        this.$page.props.flash.error
          ? this.$swal(this.$page.props.flash.error)
          : "";
        this.show = true;
      },
      deep: true,
    },
  },
};
</script>
