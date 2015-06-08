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

    var toggleFlags = function() {
      $('.js-option-toggle-flags').on('click', function(event) {
        console.log('test');
        event.stopPropagation();

        if ($(this).hasClass('js-flag-disable-btn')) {
          var flagsState = false;
        } else {
          var flagsState = true;
        }

        siteData.set("flags_state", flagsState);

        $(this).toggleClass('js-flag-disable-btn');
        $('.js-menu-lang-wrap').toggleClass('flags-enabled flags-disabled');

      });
    };

    // Returns the suitable version of the image depending on the viewport width.
    var getImageByWidth = function(sizes, targetWidth) {
      var prevImage;

      for (var i = 0, max = sizes.length; i < max; i++) {
        if (sizes[i].width < targetWidth) {
          return prevImage || sizes[i];
        }
        prevImage = sizes[i];
      }
      // Makes sure that smallest is returned if all images bigger than targetWidth.
      return sizes[sizes.length - 1];
    };

    var frontPageContentBgImageSizesContains = function(sizes, url) {
      for (var i = sizes.length; i--;) {
        if (url.indexOf(sizes[i].url.trim()) > -1) {
          return true;
        }
      }
      return false;
    };

    // Checks the lightness sum of header background image and color and sets the lightness class depending on it's value.
    var handlefrontPageContentLightnessClass = function() {
      console.log(frontPageContentCoverCombinedLightness);
      if (frontPageContentCoverCombinedLightness >= 0.5) {
        $('.js-background-type').addClass('light-background').removeClass('dark-background');
      } else {
        $('.js-background-type').addClass('dark-background').removeClass('light-background');
      }
    };

    // Header background image and color preview logic function.
    var frontPageContentCoverBgPreview = function(data, frontPageContent) {
      // Defines the variables used in preview logic.

      var frontPageContentBgImagePrevious = $('.js-bgpicker-cover-image').css('background-image'),
          frontPageContentBgImageSuitable = data.imageSizes ? getImageByWidth(data.imageSizes, $(window).width()) : null,
          frontPageContentBgImage = (data.image && data.image !== '') ? 'url(' + frontPageContentBgImageSuitable.url + ')' : 'none',
          frontPageContentBgImageSizes = (data.imageSizes && data.imageSizes !== '') ? data.imageSizes : null,
          frontPageContentBgColor = (data.color && data.color !== '') ? data.color : 'rgba(0,0,0,0)',
          frontPageContentBgColorDataLightness = (data.colorData && data.colorData !== '') ? data.colorData.lightness : 1,
          colorExtractImage = $('<img>'),
          colorExtractCanvas = $('<canvas>'),
          colorExtractImageUrl = (data.image && data.image !== '') ? data.image : null;

      if (colorExtractImageUrl) {
        if (frontPageContentBgImageSizesContains(frontPageContentBgImageSizes, frontPageContentBgImagePrevious)) {
          frontPageContentCoverCombinedLightness = getCombinedLightness(frontPageContentBg.frontPageContentBgImageColor, frontPageContentBgColor);
          handlefrontPageContentLightnessClass();
        } else {
          colorExtractImage.attr('src', colorExtractImageUrl.replace(/.*\/photos/g,'/photos'));
          colorExtractImage.load(function() {
            ColorExtract.extract(colorExtractImage[0], colorExtractCanvas[0], function(data) {
              frontPageContentBg.frontPageContentBgImageColor = data.bgColor ? data.bgColor : 'rgba(255,255,255,1)';
              frontPageContentCoverCombinedLightness = getCombinedLightness(frontPageContentBg.frontPageContentBgImageColor, frontPageContentBgColor);
              handlefrontPageContentLightnessClass();
            });
          });
        };
      } else {
        frontPageContentCoverCombinedLightness = getCombinedLightness('rgba(255,255,255,1)', frontPageContentBgColor);
        handlefrontPageContentLightnessClass();
      };

      // Updates the frontPageContent background image and background color.
      $(frontPageContent).find('.js-bgpicker-cover-image').css({'background-image' : frontPageContentBgImage});
      $(frontPageContent).find('.js-bgpicker-cover-color').css({'background-color' : frontPageContentBgColor});
    };

    // Header background image and color save logic function.
    var frontPageContentCoverBgCommit = function(data, dataName) {
      var commitData = $.extend(true, {}, data);
      commitData.image = data.image || '';
      commitData.imageSizes = data.imageSizes || '';
      commitData.color = data.color || 'rgba(255,255,255,0)';
      commitData.combinedLightness = frontPageContentCoverCombinedLightness;
      pageData.set(dataName, commitData);
    }

    var colorSum = function(bgColor, fgColor) {
      if (bgColor && fgColor) {
        if (typeof bgColor == 'string') {
          bgColor = bgColor.replace(/rgba?\(/,'').replace(/\)/,'').split(',');
          $.each(bgColor, function(n, x) {bgColor[n] = +x;});
        }
        if (typeof fgColor == 'string') {
          fgColor = fgColor.replace(/rgba?\(/,'').replace(/\)/,'').split(',');
          $.each(fgColor, function(n, x) {fgColor[n] = +x;});
        }
        if (typeof bgColor == 'object' && bgColor.hasOwnProperty('length')) {
          if (bgColor.length == 3) { bgColor.push(1.0); }
        }
        if (typeof fgColor == 'object' && fgColor.hasOwnProperty('length')) {
          if (fgColor.length == 3) { fgColor.push(1.0); }
        }
        var result = [0, 0, 0, 0];
        result[3] = 1 - (1 - fgColor[3]) * (1 - bgColor[3]);
        if (result[3] === 0) { result[3] = 1e-6; }
        result[0] = Math.min(fgColor[0] * fgColor[3] / result[3] + bgColor[0] * bgColor[3] * (1 - fgColor[3]) / result[3], 255);
        result[1] = Math.min(fgColor[1] * fgColor[3] / result[3] + bgColor[1] * bgColor[3] * (1 - fgColor[3]) / result[3], 255);
        result[2] = Math.min(fgColor[2] * fgColor[3] / result[3] + bgColor[2] * bgColor[3] * (1 - fgColor[3]) / result[3], 255);
        return $.map(result, function(e) { return Math.floor(e); });
      }
    };

    var getCombinedColor = function(bgColor, fgColor) {
      var sum = colorSum(bgColor || [255,255,255,1], fgColor || [255,255,255,1]);
      return sum;
    };

    var getCombinedLightness = function(bgColor, fgColor) {
      var combinedColor = getCombinedColor(bgColor, fgColor);
      var color = Math.round(((+combinedColor[0]) * 0.2126 + (+combinedColor[1]) * 0.7152 + (+combinedColor[2]) * 0.0722) / 2.55) / 100;
      return color;
    };

    var handleFrontPageContentCoverColorScheme = function(lightness) {
      if (typeof lightness != 'undefined') {
        if (lightness > 0.6) {
          $('.header-wrapper').addClass('light').removeClass('dark');
        } else {
          $('.header-wrapper').addClass('dark').removeClass('light');
        }
      }
    };

    window.site = $.extend(window.site || {}, {
      toggleFlags: toggleFlags,
      frontPageContentCoverBgPreview: frontPageContentCoverBgPreview,
      frontPageContentCoverBgCommit: frontPageContentCoverBgCommit,
      handleFrontPageContentCoverColorScheme: handleFrontPageContentCoverColorScheme
    });

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

})(jQuery);
