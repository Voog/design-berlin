<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<script src="{{ javascripts_path }}/application.min.js?v=1"></script>
{% sitejs_include %}

{% if site.search.enabled %}
  <script src="{{ site.static_asset_host }}/libs/edicy-search/latest/edicy-search.js"></script>
  <script src="{{ javascripts_path }}/search.min.js"></script>
  <script>

    $(function() {
      var search = new VoogSearch($('.js-search-form'), {
        per_page: 3,
        lang: '{{ page.language_code }}',
        noResults: '{{ "search_noresults"|lc }}',
        minChars: 2,
        searchOnType: true
      });

      var mobilesearch = new VoogSearch($('.js-mobile-search-form'), {
        per_page: 3,
        lang: '{{ page.language_code }}',
        noResults: '{{ "search_noresults"|lc }}',
        $parent: $('#mobile-search-results'),
        visibleClass: 'voog-mobile-search-visible',
        closeOnSideClick: false
      });


      $('.mobile-search-toggler').click(function(event) {
          event.preventDefault();
          var $body = $('body');
          if ($body.hasClass('mobilesearch-open')) {
            $body.removeClass('mobilesearch-open');
            mobilesearch.reset();

            $('.sidebar').css('padding-top', '');
          } else {
            var top,
                checkoutButtonHeight = 41;

            if ($('body').hasClass('edy-checkout-button-visible')) {
              var top = $('.sidebar').height() + checkoutButtonHeight;
              $('.sidebar').css('padding-top', checkoutButtonHeight);
            } else {
              var top = $('.sidebar').height();
              $('.sidebar').css('padding-top', '');
            }

            $('#mobile-search').css('top', top + 'px');
            $('body').addClass('mobilesearch-open');
            $('#mobile-search .search-input').get(0).focus();
          }
      });
    });
  </script>
{% endif %}

{% unless editmode %}{{ site.analytics }}{% endunless %}
