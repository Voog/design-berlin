(function ($) {

  var editmode = function () {
    return $("html").hasClass("editmode");
  };

  $.fn.extend({
    jsPopupMenu: function (options) {
      this.each(function () {
        var $menu = $(this),
          $btn = $menu.find(".js-popup-menu-btn"),
          $pop = $menu.find(".js-popup-menu-popover");

        $pop.hide();
        $btn.on("click", function (event) {
          event.preventDefault();
          if ($pop.is(":hidden")) {
            $pop.show();
            $btn.addClass("open");

            setTimeout(function () {
              $(document).on("click.js-popup-menu-click", function () {
                $pop.hide();
                $btn.removeClass("open");
                $(this).off(".js-popup-menu-click");
              });
            }, 0);
          }
        });
      });
      return this;
    },
  });

  $(".js-popup-menu").jsPopupMenu();

  $.jquerySelect = (function () {
    return {
      init: function ($elem, settings) {
        $elem.wrap('<div class="jq-select" />');

        var $holder = $elem.parent(),
          $arrow = $('<div class="jq-select-arrow"></div>'),
          $content = $('<div class="jq-select-content" />'),
          $inner = $('<div class="jq-select-inner" />').text(
            $elem.children(":selected").text()
          );

        $content.append($inner);
        $holder.append($content);
        $holder.append($arrow);

        if ($elem.hasClass("form_field_size_large")) {
          $elem.removeClass("form_field_size_large");
          $holder.addClass("form_field_size_large");
        } else if ($elem.hasClass("form_field_size_medium")) {
          $elem.removeClass("form_field_size_medium");
          $holder.addClass("form_field_size_medium");
        } else if ($elem.hasClass("form_field_size_small")) {
          $elem.removeClass("form_field_size_small");
          $holder.addClass("form_field_size_small");
        } else {
          $holder.addClass("form_field_size_small");
        }

        $elem.change(
          $.proxy(function () {
            $inner.text($elem.children(":selected").text());
          }, this)
        );

        $elem.keyup(
          $.proxy(function () {
            $inner.text($elem.children(":selected").text());
          }, this)
        );

        $elem.bind(
          "update",
          $.proxy(function () {
            $inner.text($elem.children(":selected").text());
          }, this)
        );
      },
    };
  })();

  $.fn.extend({
    jqSelect: function (options) {
      this.each(function () {
        var settings = $.extend({}, options);
        $.jquerySelect.init($(this), settings);
      });
      return this;
    },
  });

  // ===========================================================================
  // Load product cover images only when they are close or appearing in the
  // viewport.
  // ===========================================================================
  var callback_loaded = function (element) {
    var $contentItemBox = $(element).closest('.js-content-item-box');
    $contentItemBox.removeClass('not-loaded with-error').addClass('is-loaded');
  };

  var bindContentItemImageLazyload = new LazyLoad({
    threshold: 500,
    elements_selector: ".js-lazyload",
    callback_loaded: callback_loaded
  });

  $('.js-cart-btn').click(function() {
    if ($(this).data('product-id')) {
      Voog.ShoppingCart.addProductById($(this).data('product-id'))
    }
  });

  var bindSideClicks = function () {
    $('.container').on('mousedown', function (event) {
      if (!$(event.target).closest('.js-prevent-sideclick').length) {
        $('.js-image-settings-popover').toggleClass('active');
      };
    });
  };
})(jQuery);