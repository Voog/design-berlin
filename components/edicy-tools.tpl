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
  </script>
 {% endeditorjsblock %}
