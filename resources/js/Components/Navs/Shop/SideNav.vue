<template>
  <nav class="navbar navbar-vertical fixed-start navbar-expand-md" id="sidebar">
    <div class="container-fluid">
      <a class="navbar-brand" href="/shop/dashboad">
        <h2>Shop Dashboard</h2>
      </a>
      <div class="collapse navbar-collapse" id="sidebarCollapse">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="/shop/dashboad">
              <i class="fe fe-home"></i> Dashboard
            </a>
          </li>
          <li class="nav-item">
            <a
              class="nav-link"
              href="#sidebarBasics"
              data-bs-toggle="collapse"
              role="button"
              aria-expanded="false"
              aria-controls="sidebarBasics"
            >
              <i class="fe fe-clipboard"></i> Products
            </a>
            <div class="collapse" id="sidebarBasics">
              <ul class="nav nav-sm flex-column">
                <li class="nav-item">
                  <a href="/shop/products/" class="nav-link"> All Products </a>
                </li>
                <li class="nav-item">
                  <a href="/shop/create/product" class="nav-link">
                    Create Product
                  </a>
                </li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/shop/orders">
              <i class="fe fe-grid"></i> Orders
            </a>
          </li>
        </ul>
      </div>

      <div
        id=""
        title=""
      >
        <a
          class="btn w-100 btn-primary mb-4"
          href="/"
          shop
        >
          <i class="fe fe-sliders me-2"></i> Home Page
        </a>
      </div>
    </div>
  </nav>
</template>

<script>
export default {
  mounted() {
    console.log("zvaita");
  },
};
</script>

<style>
</style>
