<style>
  {% comment %}/* Body background image */{% endcomment %}
  {% if front_page %}
    {% if fallback_cover_image != nil and front_page_content_cover.image == nil %}
      .cover-image {
        background-image: url("{{ fallback_cover_image }}");
      }
    {% else %}
      {% if front_page_content_cover.imageSizes != nil %}
        {% if front_page_content_cover.imageSizes == "" %}
          .cover-image {
            background-image: none;
          }
        {% else %}
          {% for imageSize in page.data.front_page_content_cover.imageSizes %}
            {% if forloop.first %}
              .cover-image {
                background-image: url("{{ imageSize.url }}");
              }
            {% else %}
              @media screen and (max-width: {{ imageSize.width }}px) and (max-height: {{ imageSize.height }}px) {
                .cover-image {
                  background-image: url("{{ imageSize.url }}");
                }
              }
            {% endif %}
          {% endfor %}
        {% endif %}

      {% else %}
        {% assign bg_image_prefix = images_path | append: "/front" %}

        .cover-image {
          background-image: url("{{ bg_image_prefix }}.jpg");
        }

        @media screen and (max-width: 1280px) and (max-height: 1244px) {
          .cover-image {
            background-image: url("{{ bg_image_prefix }}_large.jpg");
          }
        }

        @media screen and (max-width: 600px) and (max-height: 583px) {
          .cover-image {
            background-image: url("{{ bg_image_prefix }}_block.jpg");
          }
        }
      {% endif %}
    {% endif %}

    {% comment %}/* Body Background color */{% endcomment %}
    .cover-color {
      background-color: {{ front_page_content_cover_color }};
    }
  {% endif %}
</style>
