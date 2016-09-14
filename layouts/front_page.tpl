<!DOCTYPE html>
{% include "template-variables" %}
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% assign front_page = true %}
  {% include "edicy-tools-variables" %}
  {% include "html-head" front_page: true %}
  {% include "edicy-tools-styles" %}
  {% if editmode %}<link rel="stylesheet" href="{{ site.static_asset_host }}/libs/edicy-tools/latest/edicy-tools.css">{% endif %}
</head>
<body class="front-page{% if editmode %} editmode{% endif %}{% if site.search.enabled %} search-enabled{% endif %}">
  <div class="wrap cfx">
    {% include "langmenu" %}
    {% include "topbar" %}
    <aside class="sidebar">
      {% include "sidebar" %}
    </aside>
    <div class="main">
      <div class="main-inner inner js-main-inner">
        <div class="cover-image js-bgpicker-cover-image"{{ cover_image_style }}>
          <div class="cover-color js-bgpicker-cover-color {{ cover_color_class }}"{{ cover_color_style }}>
            {% if editmode %}<button class="bgpicker-btn js-front-page-content-cover-settings" {% unless front_page_content_cover_image == '' %}data-bg-image="{{ front_page_content_cover_image }}"{% endunless %} {% unless front_page_content_cover_image_sizes == '' %}data-bg-image-sizes="{{ front_page_content_cover_image_sizes_str | escape }}"{% endunless %} {% unless front_page_content_cover_color == nil or front_page_content_cover_color == 'rgba(255,255,255,0)' %}data-bg-color="{{ front_page_content_cover_color }}"{% endunless %} {% unless front_page_content_cover_color_data == nil %}data-bg-color-data="{{ front_page_content_cover_color_data_str | escape }}"{% endunless %}></button>{% endif %}

            <div class="container-wrap cfx">
              <div class="container">
                <section class="content formatted js-background-type {{ front_page_content_cover_type }}">
                  <div class="tbl">
                    <div class="tbl-row">
                      <div class="tbl-cell" {{ edy_intro_edit_text }}>
                        {% content %}
                      </div>
                    </div>
                  </div>
                </section>
              </div>
            </div>
          </div>
        </div>
      </div>
      {% include "footer" %}
    </div>
  </div>
  {% include "mobilemenu" %}
  {% include "javascripts" %}
  {% include "edicy-tools" %}

  {% if editmode %}
  <script type="text/javascript">
    window.edy = window.edy || [];
    edy.push(['texteditorStyles', {name: 'Small', classname: 'font-size-small'}]);
  </script>
  {% endif %}
</body>
</html>
