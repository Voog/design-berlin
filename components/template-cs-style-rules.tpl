.front-page .main-inner .light-background {
  color: var(--color-main);
}

.post-date,
.comment .comment-info {
  color: var(--color-third);
}

.blog-list .post-title a {
  color: var(--color-main);
  opacity: 1;
}

.blog-list .post-title a:hover {
  color: var(--color-main);
  opacity: .75;
}

.blog-list .post-wrap {
  border-top-color: var(--color-white);
}

.lang-flag::before {
  background-color: var(--color-main);
}

@media screen and (max-width: 600px) {
  .post-nav-link:nth-child(2)::before {
    background-color: var(--form-field-background-color);
  }
}

.comments:before,
label .form_field_checkbox + .form_control_indicator::before,
.form_field_textfield,
.form_field_textarea {
  background-color: var(--form-field-background-color);
}

body,
.footer,
.topbar,
.sidebar {
  background-color: var(--sidebar-background-color);
}

body,
h1,
h2,
h3,
.search .search-input {
  color: var(--color-main);
}

.site-title {
  color: var(--color-main);
}

.site-title a {
  color: var(--color-main);
}

label .form_field_radio + .form_control_indicator::before {
  border-color: var(--form-field-background-color);
}

.lang-menu-btn .lang-title {
  color: var(--color-main);
}

@media screen and (max-width: 600px) {
  .container {
    background: none;
  }
  .lang-options .menu .menu-item {
    color: var(--color-white);
    opacity: .5;
  }
  .option-btn {
    color: var(--color-white);
  }
  .option-btn:hover {
    color: var(--color-white);
    opacity: .8;
  }
  .front-page .main-inner {
    color: var(--color-white);
  }
  .footer {
    background: var(--sidebar-background-color);
  }
  .mobile-menu-toggler span.flags-disabled .language-menu-btn .lang-title,
  .mobile-menu-toggler span:before.flags-disabled .language-menu-btn .lang-title,
  .mobile-menu-toggler span:after.flags-disabled .language-menu-btn .lang-title {
    color: var(--color-white);
  }
  #mobile-menu .mobile-menu-close:before, #mobile-menu .mobile-menu-close:after {
    background: var(--color-white);
  }
  #mobile-menu .navigation-menu ul a,
  #mobile-menu .language-menu ul a {
    color: var(--color-white);
    opacity: .5;
  }
  #mobile-menu .navigation-menu ul a.active,
  #mobile-menu .language-menu ul a.active {
    color: var(--color-white);
  }
  .mobile-menu-toggler span, .mobile-menu-toggler span:before, .mobile-menu-toggler span:after {
    background-color: var(--color-main);
  }
}

body,
.font-size-small,
.jq-select,
.jq-select select,
.form_field_textfield,
.form_field_textarea {
  font-family: var(--font-primary);
}

h1,
h2,
h3,
.front-page .main-inner,
.site-title,
.main-menu,
.sub-menu,
.content-inner,
.search .search-input,
#mobile-menu,
.form_submit input,
.custom-btn {
  font-family: var(--font-primary);
}

.sidebar {
  background-color: var(--sidebar-background-color);
}

.site-title {
  color: var(--sidebar-site-title-color);
  font-style: var(--sidebar-site-title-font-style);
  font-weight: var(--sidebar-site-title-font-weight);
  line-height: var(--sidebar-site-title-line-height);
  -webkit-text-decoration: var(--sidebar-site-title-text-decoration);
          text-decoration: var(--sidebar-site-title-text-decoration);
  text-transform: var(--sidebar-site-title-text-transform);
}

.site-title a {
  color: var(--sidebar-site-title-color);
}

@media screen and (min-width: 601px) {
  .site-title {
    font-size: var(--sidebar-site-title-font-size);
  }
}

.main-menu ul a {
  color: var(--sidebar-mainmenu-color);
  font-family: var(--sidebar-mainmenu-font-family);
  font-size: var(--sidebar-mainmenu-font-size);
  font-style: var(--sidebar-mainmenu-font-style);
  font-weight: var(--sidebar-mainmenu-font-weight);
  line-height: var(--sidebar-mainmenu-line-height);
  -webkit-text-decoration: var(--sidebar-mainmenu-text-decoration);
          text-decoration: var(--sidebar-mainmenu-text-decoration);
  text-transform: var(--sidebar-mainmenu-text-transform);
}

.main-menu ul a:hover {
  color: var(--sidebar-mainmenu-hover-color);
  font-style: var(--sidebar-mainmenu-hover-font-style);
  font-weight: var(--sidebar-mainmenu-hover-font-weight);
  -webkit-text-decoration: var(--sidebar-mainmenu-hover-text-decoration);
          text-decoration: var(--sidebar-mainmenu-hover-text-decoration);
  text-transform: var(--sidebar-mainmenu-hover-text-transform);
}

.main-menu ul a.active {
  color: var(--sidebar-mainmenu-active-color);
  font-style: var(--sidebar-mainmenu-active-font-style);
  font-weight: var(--sidebar-mainmenu-active-font-weight);
  -webkit-text-decoration: var(--sidebar-mainmenu-active-text-decoration);
          text-decoration: var(--sidebar-mainmenu-active-text-decoration);
  text-transform: var(--sidebar-mainmenu-active-text-transform);
}

.main .sub-menu a {
  border-bottom-color: var(--color-third);
  border-bottom-style: var(--content-submenu-text-decoration);
  border-bottom-width: 3px;
  color: var(--content-submenu-color);
  font-family: var(--content-submenu-font-family);
  font-size: var(--content-submenu-font-size);
  font-style: var(--content-submenu-font-style);
  font-weight: var(--content-submenu-font-weight);
  text-transform: var(--content-submenu-text-transform);
}

.main .sub-menu a:hover {
  border-bottom-color: var(--content-submenu-hover-color);
  border-bottom-style: var(--content-submenu-hover-text-decoration);
  border-bottom-width: 3px;
  color: var(--content-submenu-hover-color);
  font-style: var(--content-submenu-hover-font-style);
  font-weight: var(--content-submenu-hover-font-weight);
  text-transform: var(--content-submenu-hover-text-transform);
}

.main .sub-menu a.active {
  border-bottom-color: var(--content-submenu-active-color);
  border-bottom-style: var(--content-submenu-active-text-decoration);
  border-bottom-width: 3px;
  color: var(--content-submenu-active-color);
  font-style: var(--content-submenu-active-font-style);
  font-weight: var(--content-submenu-active-font-weight);
  text-transform: var(--content-submenu-active-text-transform);
}

.formatted h1 {
  color: var(--h1-color);
}

.formatted h1,
.formatted h1 a,
.formatted h1 a:hover {
  font-family: var(--h1-font-family);
  font-size: var(--h1-font-size);
  font-style: var(--h1-font-style);
  font-weight: var(--h1-font-weight);
  line-height: var(--h1-line-height);
  text-align: var(--h1-alignment);
  -webkit-text-decoration: var(--h1-text-decoration);
          text-decoration: var(--h1-text-decoration);
  text-transform: var(--h1-text-transform);
}

.formatted h2 {
  color: var(--h2-color);
}

.formatted h2,
.formatted h2 a,
.formatted h2 a:hover {
  font-family: var(--h2-font-family);
  font-size: var(--h2-font-size);
  font-style: var(--h2-font-style);
  font-weight: var(--h2-font-weight);
  line-height: var(--h2-line-height);
  text-align: var(--h2-alignment);
  -webkit-text-decoration: var(--h2-text-decoration);
          text-decoration: var(--h2-text-decoration);
  text-transform: var(--h2-text-transform);
}

.formatted h3 {
  color: var(--h3-color);
}

.formatted h3,
.formatted h3 a,
.formatted h3 a:hover {
  font-family: var(--h3-font-family);
  font-size: var(--h3-font-size);
  font-style: var(--h3-font-style);
  font-weight: var(--h3-font-weight);
  line-height: var(--h3-line-height);
  text-align: var(--h3-alignment);
  -webkit-text-decoration: var(--h3-text-decoration);
          text-decoration: var(--h3-text-decoration);
  text-transform: var(--h3-text-transform);
}

.formatted a {
  color: var(--content-links-color);
  font-style: var(--content-links-font-style);
  font-weight: var(--content-links-font-weight);
  -webkit-text-decoration: var(--content-links-text-decoration);
          text-decoration: var(--content-links-text-decoration);
  text-transform: var(--content-links-text-transform);
}

.formatted a:hover {
  color: var(--content-links-hover-color);
  font-style: var(--content-links-hover-font-style);
  font-weight: var(--content-links-hover-font-weight);
  -webkit-text-decoration: var(--content-links-hover-text-decoration);
          text-decoration: var(--content-links-hover-text-decoration);
  text-transform: var(--content-links-hover-text-transform);
}

.main {
  background-color: var(--content-background-color);
}

.main .formatted,
.main .post-content {
  font-size: var(--content-font-size);
  font-style: var(--content-font-style);
  font-weight: var(--content-font-weight);
  line-height: var(--content-line-height);
  text-align: var(--content-alignment);
  -webkit-text-decoration: var(--content-text-decoration);
          text-decoration: var(--content-text-decoration);
  text-transform: var(--content-text-transform);
}

.main .formatted table td,
.main .formatted table th,
.main .post-content table td,
.main .post-content table th {
  padding: var(--table-cell-padding);
  border-style: var(--table-border-style);
  border-color: var(--color-third);
}

.main .footer .formatted {
  color: var(--sidebar-footer-color);
  font-size: var(--sidebar-footer-font-size);
  line-height: var(--sidebar-footer-line-height);
}

.main .footer .formatted .voog-reference a {
  font-size: 11px;
}

.front-page .main .main-inner .formatted {
  font-size: var(--front-page-font-size);
  line-height: var(--front-page-line-height);
  font-weight: 400;
}

.main .main-inner .dark-background {
  color: var(--color-white);
}

.main .main-inner .dark-background h1,
.main .main-inner .dark-background h2,
.main .main-inner .dark-background h3 {
  color: var(--color-white);
}

.main .main-inner .light-background {
  color: var(--color-main);
}

.main .custom-btn,
.main .form_submit input,
.main .submit {
  font-size: var(--content-button-font-size);
  font-style: var(--content-button-font-style);
  font-weight: var(--content-button-font-weight);
  -webkit-text-decoration: var(--content-button-text-decoration);
          text-decoration: var(--content-button-text-decoration);
  text-transform: var(--content-button-text-transform);
}

.main .custom-btn, .main .custom-btn:hover,
.main .custom-btn a,
.main .custom-btn a:hover,
.main .form_submit input,
.main .form_submit input:hover,
.main .form_submit input a,
.main .form_submit input a:hover,
.main .submit,
.main .submit:hover,
.main .submit a,
.main .submit a:hover {
  font-size: var(--content-button-font-size);
  font-style: var(--content-button-font-style);
  font-weight: var(--content-button-font-weight);
  -webkit-text-decoration: var(--content-button-text-decoration);
          text-decoration: var(--content-button-text-decoration);
  text-transform: var(--content-button-text-transform);
}

.main .custom-btn:not(.custom-btn-disabled):hover,
.main .form_submit input:hover,
.main .submit:hover {
  opacity: .8;
}

.custom-btn:not(.custom-btn-disabled) {
  background-color: var(--content-button-background-color);
  color: var(--content-button-color);
}

.custom-btn:not(.custom-btn-disabled):hover {
  background-color: var(--content-button-background-color);
  color: var(--content-button-color);
}

.jq-select-content {
  padding: 0 28px 0 0;
}

.jq-select-inner {
  padding: 4px 10px;
}

.jq-select-arrow {
  background-color: var(--form-field-background-color);
}

.form_field_select,
.jq-select-inner,
.form_field_textfield,
.form_field_textarea {
  background: var(--form-field-background-color);
  color: var(--form-field-text-color);
  font-size: var(--form-field-text-font-size);
  font-style: var(--form-field-text-font-style);
  font-weight: var(--form-field-text-font-weight);
  line-height: var(--form-field-text-line-height);
  -webkit-text-decoration: var(--form-field-text-decoration);
          text-decoration: var(--form-field-text-decoration);
  text-transform: var(--form-field-text-transform);
}

#mobile-menu {
  background-color: var(--color-main);
  opacity: .9;
}

.product-content .js-product-content-right .product-price {
  color: var(--content-area-product-price__color);
  font-size: var(--content-area-product-price__font-size);
  font-weight: var(--content-area-product-price__font-weight);
  font-style: var(--content-area-product-price__font-style);
  -webkit-text-decoration: var(--content-area-product-price__text-decoration);
          text-decoration: var(--content-area-product-price__text-decoration);
}

.product-content .js-product-content-right .product-description {
  color: var(--content-area-product-description__color);
  font-size: var(--content-area-product-description__font-size);
  font-weight: var(--content-area-product-description__font-weight);
  font-style: var(--content-area-product-description__font-style);
  -webkit-text-decoration: var(--content-area-product-description__text-decoration);
          text-decoration: var(--content-area-product-description__text-decoration);
}

.product-content .js-product-content-right .content-item-title h1 {
  color: var(--content-area-product-title__color);
  font-size: var(--content-area-product-title__font-size);
  font-weight: var(--content-area-product-title__font-weight);
  font-style: var(--content-area-product-title__font-style);
  -webkit-text-decoration: var(--content-area-product-title__text-decoration);
          text-decoration: var(--content-area-product-title__text-decoration);
  text-align: var(--content-area-product-title__alignment);
}

.menu-item.current-page a {
  color: var(--color-main);
}
