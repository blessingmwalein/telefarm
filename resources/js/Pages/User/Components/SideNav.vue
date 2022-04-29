<template>
    <aside
        class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3"
        id="sidenav-main"
    >
        <div class="sidenav-header " style="background-color:green; color:white">
            <i
                class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
                aria-hidden="true"
                id="iconSidenav"
            ></i>
            <a class="navbar-brand m-0 text-white" href="#" target="_blank">
                <span class="ms-1 font-weight-bold text-white">User dashboard</span>
            </a>
        </div>
        <hr class="horizontal dark mt-0" />
        <div
            class="collapse navbar-collapse w-auto h-auto"
            id="sidenav-collapse-main"
        >
            <ul class="navbar-nav">
                <li class="nav-item mt-3">
                    <h6
                        class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6"
                    >
                        PAGES
                    </h6>
                </li>

                <li class="nav-item">
                    <a
                        data-bs-toggle="collapse"
                        href="#ecommerceExamples"
                        class="nav-link active"
                        aria-controls="ecommerceExamples"
                        role="button"
                        aria-expanded="false"
                    >
                        <div
                            class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center d-flex align-items-center justify-content-center me-2"
                        >
                            <svg
                                class="text-dark"
                                width="12px"
                                height="12px"
                                viewBox="0 0 42 44"
                                version="1.1"
                                xmlns="http://www.w3.org/2000/svg"
                                xmlns:xlink="http://www.w3.org/1999/xlink"
                            >
                                <title>basket</title>
                                <g
                                    stroke="none"
                                    stroke-width="1"
                                    fill="none"
                                    fill-rule="evenodd"
                                >
                                    <g
                                        transform="translate(-1869.000000, -741.000000)"
                                        fill="#FFFFFF"
                                        fill-rule="nonzero"
                                    >
                                        <g
                                            transform="translate(1716.000000, 291.000000)"
                                        >
                                            <g
                                                id="basket"
                                                transform="translate(153.000000, 450.000000)"
                                            >
                                                <path
                                                    class="color-background"
                                                    d="M34.080375,13.125 L27.3748125,1.9490625 C27.1377583,1.53795093 26.6972449,1.28682264 26.222716,1.29218729 C25.748187,1.29772591 25.3135593,1.55890827 25.0860125,1.97535742 C24.8584658,2.39180657 24.8734447,2.89865282 25.1251875,3.3009375 L31.019625,13.125 L10.980375,13.125 L16.8748125,3.3009375 C17.1265553,2.89865282 17.1415342,2.39180657 16.9139875,1.97535742 C16.6864407,1.55890827 16.251813,1.29772591 15.777284,1.29218729 C15.3027551,1.28682264 14.8622417,1.53795093 14.6251875,1.9490625 L7.919625,13.125 L0,13.125 L0,18.375 L42,18.375 L42,13.125 L34.080375,13.125 Z"
                                                    opacity="0.595377604"
                                                ></path>
                                                <path
                                                    class="color-background"
                                                    d="M3.9375,21 L3.9375,38.0625 C3.9375,40.9619949 6.28800506,43.3125 9.1875,43.3125 L32.8125,43.3125 C35.7119949,43.3125 38.0625,40.9619949 38.0625,38.0625 L38.0625,21 L3.9375,21 Z M14.4375,36.75 L11.8125,36.75 L11.8125,26.25 L14.4375,26.25 L14.4375,36.75 Z M22.3125,36.75 L19.6875,36.75 L19.6875,26.25 L22.3125,26.25 L22.3125,36.75 Z M30.1875,36.75 L27.5625,36.75 L27.5625,26.25 L30.1875,26.25 L30.1875,36.75 Z"
                                                ></path>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
                        </div>
                        <span class="nav-link-text ms-1">Ecommerce</span>
                    </a>
                    <div class="collapse show" id="ecommerceExamples">
                        <ul class="nav ms-4 ps-3">
                            <li class="nav-item active">
                                <a
                                    class="nav-link active"
                                    :href="'/'"
                                >
                                    <span class="sidenav-mini-icon"> O </span>
                                    <span class="sidenav-normal">
                                        Website
                                    </span>
                                </a>
                            </li>
                            <li class="nav-item active">
                                <a
                                    class="nav-link active"
                                    :href="'/user/dashboad'"
                                >
                                    <span class="sidenav-mini-icon"> O </span>
                                    <span class="sidenav-normal">
                                        Dashboard
                                    </span>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a
                                    class="nav-link"
                                    data-bs-toggle="collapse"
                                    aria-expanded="false"
                                    href="#ordersExample"
                                >
                                    <span class="sidenav-mini-icon"> O </span>
                                    <span class="sidenav-normal">
                                        Orders <b class="caret"></b
                                    ></span>
                                </a>
                                <div class="collapse" id="ordersExample">
                                    <ul class="nav nav-sm flex-column">
                                        <li class="nav-item">
                                            <a
                                                class="nav-link"
                                                :href="'/user/dashboard/orders'"
                                            >
                                                <span
                                                    class="sidenav-mini-icon text-xs"
                                                >
                                                    O
                                                </span>
                                                <span class="sidenav-normal">
                                                    Order List
                                                </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a
                                    class="nav-link"
                                    :href="'/user/dashboard/address'"
                                >
                                    <span class="sidenav-mini-icon"> R </span>
                                    <span class="sidenav-normal">
                                        Address
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a
                        data-bs-toggle="collapse"
                        href="#authExamples"
                        class="nav-link"
                        aria-controls="authExamples"
                        role="button"
                        aria-expanded="false"
                    >
                        <div
                            class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center d-flex align-items-center justify-content-center me-2"
                        >
                            <svg
                                width="12px"
                                height="12px"
                                viewBox="0 0 40 44"
                                version="1.1"
                                xmlns="http://www.w3.org/2000/svg"
                                xmlns:xlink="http://www.w3.org/1999/xlink"
                            >
                                <title>document</title>
                                <g
                                    stroke="none"
                                    stroke-width="1"
                                    fill="none"
                                    fill-rule="evenodd"
                                >
                                    <g
                                        transform="translate(-1870.000000, -591.000000)"
                                        fill="#FFFFFF"
                                        fill-rule="nonzero"
                                    >
                                        <g
                                            transform="translate(1716.000000, 291.000000)"
                                        >
                                            <g
                                                transform="translate(154.000000, 300.000000)"
                                            >
                                                <path
                                                    class="color-background"
                                                    d="M40,40 L36.3636364,40 L36.3636364,3.63636364 L5.45454545,3.63636364 L5.45454545,0 L38.1818182,0 C39.1854545,0 40,0.814545455 40,1.81818182 L40,40 Z"
                                                    opacity="0.603585379"
                                                ></path>
                                                <path
                                                    class="color-background"
                                                    d="M30.9090909,7.27272727 L1.81818182,7.27272727 C0.814545455,7.27272727 0,8.08727273 0,9.09090909 L0,41.8181818 C0,42.8218182 0.814545455,43.6363636 1.81818182,43.6363636 L30.9090909,43.6363636 C31.9127273,43.6363636 32.7272727,42.8218182 32.7272727,41.8181818 L32.7272727,9.09090909 C32.7272727,8.08727273 31.9127273,7.27272727 30.9090909,7.27272727 Z M18.1818182,34.5454545 L7.27272727,34.5454545 L7.27272727,30.9090909 L18.1818182,30.9090909 L18.1818182,34.5454545 Z M25.4545455,27.2727273 L7.27272727,27.2727273 L7.27272727,23.6363636 L25.4545455,23.6363636 L25.4545455,27.2727273 Z M25.4545455,20 L7.27272727,20 L7.27272727,16.3636364 L25.4545455,16.3636364 L25.4545455,20 Z"
                                                ></path>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
                        </div>
                        <span class="nav-link-text ms-1">Authentication</span>
                    </a>
                    <div class="collapse" id="authExamples">
                        <ul class="nav ms-4 ps-3">
                            <li class="nav-item">
                                <a class="nav-link" :href="'/user/profile'">
                                    <span class="sidenav-mini-icon"> R </span>
                                    <span class="sidenav-normal">
                                        Profile
                                    </span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a
                                    class="nav-link"
                                    :href="'/user/dashboard/change-password'"
                                >
                                    <span class="sidenav-mini-icon"> R </span>
                                    <span class="sidenav-normal">
                                        Change password
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </aside>
</template>

<script>
export default {};
</script>

<style></style>
