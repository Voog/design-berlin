<!DOCTYPE html>
{%- include "template-settings" -%}
{%- include "template-variables" -%}
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "edicy-tools-variables" %}
  {% include "html-head" %}

  {% sd_product %}
</head>

{%- capture bottom_content_html -%}
  {%- unless editmode -%}
    {%- content bind=product name="content" -%}
  {%- endunless -%}
{%- endcapture -%}

{%- assign bottom_content_size = bottom_content_html | strip | size -%}

{%- capture gallery_content_html -%}
  {%- unless editmode -%}
    {%- content bind=product name="gallery" -%}
  {%- endunless -%}
{%- endcapture -%}

{%- assign gallery_content_size = gallery_content_html | strip | size -%}

{%- capture product_social_html -%}
  {%- unless editmode -%}
    {%- xcontent name="product-social" -%}
  {%- endunless -%}
{%- endcapture -%}

{%- assign product_social_size = product_social_html | strip | size -%}

<body class="{% if site.search.enabled %}search-enabled{% endif %}{% if editmode %} editmode{% endif %}">
  <div class="wrap cfx">
    {% include "langmenu" %}
    {% include "topbar" %}
    <aside class="sidebar">
      {% include "sidebar" %}
    </aside>
    <div class="main">
      <div class="inner">
        <div class="container-wrap cfx">
          <div class="container">
            {% include "submenu" %}

            <main class="content cfx formatted product-content">
              {% include 'menu-breadcrumbs-sd' %}
              <div class="flex_row flex_row-2 product-content" data-search-indexing-allowed="true">
                <div class="flex_row-2--item-50">
                  <div class="mar_0-8 p-rel js-product-page-image-wrap">
                    {%- if product.image != blank %}
                      {% assign item_image_state = "with-image" %}
                    {% else %}
                      {% assign item_image_state = "without-image" %}
                    {% endif -%}

                    <div class="content-item-box {{ item_image_state }} js-content-item-box">
                      <div class="item-top product-image">
                        <div class="top-inner">
                          {%- if product.image != blank %}
                            {% image product.image loading: 'lazy' target_width: "600" class: "item-image not-cropped" %}
                          {% endif -%}
                        </div>
                      </div>
                    </div>
                  </div>

                  {%- if gallery_content_size > 0 or editmode -%}
                    <section class="mar_0-8 content-body content-formatted mar_t-32 js-product-gallery" data-search-indexing-allowed="true">
                      {%- assign gallery_title = "gallery" | lce -%}
                      {%- assign gallery_title_tooltip = "content_tooltip_additional_images" | lce -%}
                      {% content bind=product name="gallery" title=gallery_title title_tooltip=gallery_title_tooltip %}
                    </section>
                  {% endif -%}
                </div>

                <div class="flex_row-2--item-50 js-product-content-right">
                  <div class="mar_0-8 flex_col t-sticky">
                    <section class="content-body content-formatted" data-search-indexing-allowed="true">
                      <div class="content-item-title content-area">
                        <h1>{%- editable product.name -%}</h1>
                      </div>

                      <div class="product-price">
                        {%- if product.price_max_with_tax != product.price_min_with_tax -%}
                          {{ product.price_min_with_tax | money_with_currency: product.currency -}}
                          <span class="pad_0-4">–</span>
                        {%- endif -%}
                        {{ product.price_max_with_tax | money_with_currency: product.currency -}}
                      </div>

                      {%- if editmode or product.description != blank -%}
                        <div class="product-description">
                          {%- editable product.description -%}
                        </div>
                      {% endif -%}

                      <div class="js-buy-btn-content">
                        {% include "buy-button" %}
                      </div>

                      {%- if editmode or product_social_size > 0 -%}
                        <div class="product-cross-page-info">
                          {%- assign cross_page_info_title = "cross_page_info" | lce  -%}
                          {%- assign cross_page_info_title_tooltip = "content_tooltip_all_pages_same_type" | lce -%}
                          {% xcontent name="product-social" title=cross_page_info_title title_tooltip=cross_page_info_title_tooltip %}
                        </div>
                      {%- endif -%}

                      {%- assign content_default_title = "content" | lce -%}
                      {%- assign content_default_title_tooltip = "content_tooltip_specific_page" | lce -%}
                      {% content bind=product title=content_default_title title_tooltip=content_default_title_tooltip %}
                    </section>
                  </div>
                </div>
              </div>

              {%- if bottom_content_size > 0 or editmode -%}
                <section
                  class="content-product-wide content-area mar_0-8"
                  data-search-indexing-allowed="true">
                  {%- assign bottom_content_title = "additional_content" | lce -%}
                  {%- assign bottom_content_title_tooltip = "content_tooltip_additional_information" | lce -%}
                  {% content bind=product name="content" title=bottom_content_title title_tooltip=bottom_content_title_tooltip %}
                </section>
              {%- endif -%}

            </main>
          </div>
        </div>
      </div>
      {% include "footer" %}
    </div>
  </div>
  {% include "mobilemenu" %}
  {% include "site-signout" %}
  {% include "javascripts" %}

  <script>
    if (template) {
      template.handleAutogenProductPageContent();
      {%- if product and editmode %}
        template.handleProductImageClick({{ product.id }});
      {% endif -%}
    }
  </script>
</body>
</html>
