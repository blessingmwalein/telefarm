<template>
  <nav
    class="navbar navbar-expand-md navbar-light d-none d-md-flex"
    id="topbar"
  >
    <div class="container-fluid">
      <!-- Form -->



    </div>
  </nav>
</template>

<script>
export default {
  methods: {
    logout() {
      this.$inertia.post(route("logout"));
      location.reload();
    },
  },
};
</script>

<style>
</style>
