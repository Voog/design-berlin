(function ($) {
  $(function () {
    // Function to limit the rate at which a function can fire.
    var debounce = function (func, wait, immediate) {
      var timeout;
      return function () {
        var context = this,
          args = arguments;
        var later = function () {
          timeout = null;
          if (!immediate) func.apply(context, args);
        };
        var callNow = immediate && !timeout;
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
        if (callNow) func.apply(context, args);
      };
    };

    $(".mobile-menu-toggler").click(function (event) {
      event.preventDefault();
      $("body").toggleClass("mobilemenu-open");
      $("body").removeClass("mobilesearch-open");
    });

    $(".mobile-menu-close").on("click", function (event) {
      event.preventDefault();

      if ($("body").hasClass("language-menu-open")) {
        $("body").removeClass("language-menu-open");
      } else {
        $("body").removeClass("mobilemenu-open");
      }
    });

    $(".language-menu-btn").on("click", function (event) {
      event.preventDefault();
      $("body").addClass("language-menu-open");
    });

    $(".comment-form-focus-input").focus(function () {
      var $el = $(this).hide();
      $(this)
        .closest(".comment-form")
        .find(".form_area")
        .show()
        .find("textarea")
        .focus();
    });

    if ($("body").hasClass("front-page")) {
      setFrontContent();
      $(".tbl").css("visibility", "visible");
      $(window).resize(debounce(setFrontContent, 100));
    }

    if ($(".comment-form").hasClass("form_with_errors")) {
      $("html, body").scrollTop($(".comment-form").offset().top);
    } else if ($("form").find(".form_error, .form_notice").length > 0) {
      $("html, body").scrollTop(
        $(".form_error, .form_notice").closest("form").offset().top
      );
    }

  });

  var editmode = function () {
    return $("html").hasClass("editmode");
  };

  var setFrontContent = function () {
    var wh = $(window).height(),
      $tbl = $(".tbl").css("height", "auto");

    $tbl.height(wh - 140);
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

  var handleWindowScroll = function() {
    window.addEventListener('scroll', function(e) {
      var wrapperHeight = $('.header_fixed').height();
      $('.t-sticky').css('top', $('.header_fixed').outerHeight() + 32);

      if (window.scrollY > wrapperHeight) {
        $('.header_fixed:not(.relative)').addClass('scroll');
        $('body').addClass('scroll');
      } else {
        $('.header_fixed').removeClass('scroll');
        $('body').removeClass('scroll');
      }
    });
  };

  var handleProductPageContent = function() {
    $(document).ready(function() {
      changeProductImagePos();
    });

    $(window).resize(debounce(function() {
      changeProductImagePos();
    }, 25));

    var changeProductImagePos = function() {
      var paroductImage = $('.js-product-page-image');
      var paroductImageWrap = $('.js-product-page-image-wrap');
      var buyBtnContent = $('.js-buy-btn-content');

      if ($('.js-buy-btn-content .edy-buy-button-container').length >= 1) {
        if ($( window ).width() <= 752) {
          if ($('.js-buy-btn-content .js-product-page-image').length <= 0) {
            buyBtnContent.prepend(paroductImage);
          }
        } else {
          if ($('.js-product-page-image-wrap .js-product-page-image').length <= 0) {
            paroductImageWrap.prepend(paroductImage);
          }
        }
      }
    }
  }

  var init = function() {
    handleWindowScroll();
  };

  window.site = $.extend(window.site || {}, {
    handleProductPageContent: handleProductPageContent
  });

  init();
})(jQuery);