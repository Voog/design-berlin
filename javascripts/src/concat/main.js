;(function($) {

    $(function() {
      // Function to limit the rate at which a function can fire.
      var debounce = function(func, wait, immediate) {
        var timeout;
        return function() {
          var context = this, args = arguments;
          var later = function() {
            timeout = null;
            if (!immediate) func.apply(context, args);
          };
          var callNow = immediate && !timeout;
          clearTimeout(timeout);
          timeout = setTimeout(later, wait);
          if (callNow) func.apply(context, args);
        };
      };

        $('.js-popup-menu').jsPopupMenu();

        if ($('html').hasClass('no-placeholder')) {
            $('input[type="text"],textarea').each(function() {
                if ($(this).attr('placeholder') && !$(this).val()) {
                    $(this).val($(this).attr('placeholder'));
                }
                $(this).focus(function() {
                    if ($(this).val() == $(this).attr('placeholder')) {
                        $(this).val('');
                    }
                }).blur(function() {
                    if (!$(this).val() && $(this).attr('placeholder')) {
                        $(this).val($(this).attr('placeholder'));
                    }
                });
            });
        }

        $('.form_fields:not(.edy-fe-fields) select, .custom-select').jqSelect();

        $('body:not(.editmode) table').each(function() {
            $(this).wrap('<div class="table-holder" />');
        });

        $('.mobile-menu-toggler').click(function(event) {
            event.preventDefault();
            $('body').toggleClass('mobilemenu-open');
            $('body').removeClass('mobilesearch-open');
        });

        $('.mobile-menu-close').on('click', function(event) {
            event.preventDefault();

            if ($('body').hasClass('language-menu-open')) {
                $('body').removeClass('language-menu-open');
            }
            else {
                $('body').removeClass('mobilemenu-open');
            }
        });


        $('.language-menu-btn').on('click', function(event) {
            event.preventDefault();
            $('body').addClass('language-menu-open');
        });

        $('.comment-form-focus-input').focus(function() {
            var $el = $(this).hide();
            $(this).closest('.comment-form').find('.form_area').show().find('textarea').focus();
        });

        if ($('body').hasClass('editmode')) {
            setTitlebox();
            $(window).resize(debounce(setTitlebox, 100));
        }

        if ($('body').hasClass('front-page')) {
            setFrontContent();
            $('.tbl').css('visibility', 'visible');
            $(window).resize(debounce(setFrontContent, 100));
        }

        if ($('.comment-form').hasClass('form_with_errors')) {
          $('html, body').scrollTop($('.comment-form').offset().top);
        } else if ($('form').find('.form_error, .form_notice').length > 0) {
          $('html, body').scrollTop($('.form_error, .form_notice').closest('form').offset().top);
        }
    });

    var setFrontContent = function() {
        var wh = $(window).height(),
            $tbl = $('.tbl').css('height', 'auto');


            $tbl.height(wh-140);
    };

    var setTitlebox = function() {
        var $c = $('.site-title:visible');
        if ($c.is(':empty')) {
            $('.site-title-editable').appendTo($c);
        }
    };

})(jQuery);


(function($) {
    $.fn.extend({
        jsPopupMenu: function(options) {
            this.each(function() {
                var $menu = $(this),
                    $btn = $menu.find('.js-popup-menu-btn'),
                    $pop = $menu.find('.js-popup-menu-popover');

                $pop.hide();
                $btn.on('click', function(event) {
                    event.preventDefault();
                    if ($pop.is(':hidden')) {
                        $pop.show();
                        $btn.addClass('open');

                        setTimeout(function() {
                            $(document).on('click.js-popup-menu-click', function() {
                                $pop.hide();
                                $btn.removeClass('open');
                                $(this).off('.js-popup-menu-click');
                            });
                        },0);

                    }
                });
            });
            return this;
        }
    });

})(jQuery);

(function($) {
    $.jquerySelect = function() {

        return {
            init: function($elem, settings) {
                $elem.wrap('<div class="jq-select" />');

                var $holder = $elem.parent(),
                    $arrow = $('<div class="jq-select-arrow"></div>'),
                    $content = $('<div class="jq-select-content" />'),
                    $inner = $('<div class="jq-select-inner" />').text($elem.children(':selected').text());

                $content.append($inner);
                $holder.append($content);
                $holder.append($arrow);

                if ($elem.hasClass('form_field_size_large')) {
                    $elem.removeClass('form_field_size_large');
                    $holder.addClass('form_field_size_large');
                }

                else if ($elem.hasClass('form_field_size_medium')) {
                    $elem.removeClass('form_field_size_medium');
                    $holder.addClass('form_field_size_medium');
                }

                else if ($elem.hasClass('form_field_size_small')) {
                    $elem.removeClass('form_field_size_small');
                    $holder.addClass('form_field_size_small');
                }
                else {
                    $holder.addClass('form_field_size_small');
                }

                $elem.change($.proxy(function() {
                    $inner.text($elem.children(':selected').text());
                }, this));

                $elem.keyup($.proxy(function() {
                    $inner.text($elem.children(':selected').text());
                }, this));

                $elem.bind('update', $.proxy(function() {
                    $inner.text($elem.children(':selected').text());
                }, this));
            }
        };
    }();

    $.fn.extend({
        jqSelect: function(options) {
            this.each(function() {
                var settings = $.extend({}, options);
                $.jquerySelect.init($(this), settings);
            });
            return this;
        }
    });

    // Reduces opacity of the gallery images that are not under the cursor.
    $('.edys-gallery').mouseover(function() {
      $(this).find('.edys-gallery-item').addClass('inactive');
    });

    $('.edys-gallery').mouseout(function() {
      $(this).find('.edys-gallery-item').removeClass('inactive');
    });
})(jQuery);
