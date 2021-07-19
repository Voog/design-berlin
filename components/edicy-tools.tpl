{% editorjsblock %}
  <script src='{{ site.static_asset_host }}/libs/edicy-tools/latest/edicy-tools.js'></script>
  <script>
    var siteData = new Edicy.CustomData({
      type: 'site'
    });

    var pageData = new Edicy.CustomData({
      type: 'page',
      id: '{{ page.id }}'
    });

    // Initiates language flag toggleing functionality.
    site.toggleFlags();

    // Front page left content area background picker.
    var frontPageContentBg = new Edicy.BgPicker($('.js-front-page-content-cover-settings'), {
        picture: true,
        target_width: 600,
        color: true,
        showAlpha: true,

      preview: function(data) {
        site.frontPageContentCoverBgPreview(data, '.js-main-inner');
      },

      commit: function(data) {
        site.frontPageContentCoverBgCommit(data, 'front_page_content_cover');
      }
    });

    template.bindCustomTexteditorStyles('{{ "button" | lc: editor_locale }}');

    {%- if page.layout_title == product_layout -%}
      {%- assign dropAreaPlaceholder = "drag_picture_for_product_here" | lce | escape -%}
      site.bindProductListeners("{{ dropAreaPlaceholder }}", {{ page.id }});
    {%- else -%}
      {%- assign dropAreaPlaceholder = "drag_picture_here" | lce | escape -%}

      {%if site.data.settings_root_item %}
        rootItemValuesObj = {{ site.data.settings_root_item | json }};
      {% else %}
        rootItemValuesObj = {};
      {% endif %};

      template.bindRootItemSettings(rootItemValuesObj);
    {%- endif -%}

    site.bindContentItemImgDropAreas('{{ dropAreaPlaceholder }}', "item_image", "image_crop_state");
    site.bindContentItemImageCropToggle("image_crop_state");
  </script>
 {% endeditorjsblock %}
