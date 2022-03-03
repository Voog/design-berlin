{% comment %}TEMPLATE META DATA{% endcomment %}
{% comment %}https://developers.facebook.com/tools/debug - Debug after each modification{% endcomment %}
{% if site.data.fb_admin %}<meta property="fb:admins" content="{{ site.data.fb_admin }}">{% endif %}
<meta property="og:type" content="{% if article %}article{% else %}website{% endif %}">
<meta property="og:url" content="{{ site.url }}{% if article %}{{ article.url | remove_first:'/' }}{% elsif product %}{{ product.url | remove_first:'/' }}{% else %}{{ page.url | remove_first:'/' }}{% endif %}">
<meta property="og:title" content="{% title %}">
<meta property="og:site_name" content="{{ page.site_title | escape }}">

{% comment %}Open Graph image{% endcomment %}
{% if page.image == nil and front_page %}
  {% if fallback_cover_image != nil and fallback_cover_image != '' and front_page_content_cover_image_sizes == nil %}
    {% assign og_image = fallback_cover_image %}
  {% elsif front_page_content_cover_image_sizes != nil and front_page_content_cover_image_sizes != '' %}
    {% for size in front_page_content_cover_image_sizes reversed %}
      {% if size.width <= 1280 %}
        {% assign og_image = size %}
      {% else %}
        {% break %}
      {% endif %}
    {% endfor %}
  {% endif %}
{% else %}
  {% if article %}
    {% if article.image? %}
      {% assign og_image = article.image.for-width-1200 %}
    {% endif %}
  {% elsif product %}
    {% if product.image? %}
      {% assign og_image = product.image.for-width-1200 %}
    {% endif %}
  {% elsif page.image? %}
    {% assign og_image = page.image.for-width-1200 %}
  {% endif %}
{% endif %}

{% if og_image %}
  {% comment %}"http:" and "https:" strings are removed and readded to ensure that older bg-picker images will have protocol.{% endcomment %}
  {% if og_image.url %}<meta property="og:image" content="{{ og_image.url | replace_first: "http:", "" | replace_first: "https:", "" | prepend: "https:" }}">{% endif %}
  {% if og_image.content_type %}<meta property="og:image:type" content="{{ og_image.content_type }}">{% endif %}
  {% if og_image.width %}<meta property="og:image:width" content="{{ og_image.width }}">{% endif %}
  {% if og_image.height %}<meta property="og:image:height" content="{{ og_image.height }}">{% endif %}
{% endif %}

{% comment %}Open Graph description{% endcomment %}
{% if article %}
  {% assign description = article.description %}
{% else %}
  {% assign description = page.description %}
{% endif %}

{% if description != nil and description != '' %}
  <meta property="og:description" content="{{ description | escape }}">
  <meta name="description" content="{{ description | escape }}">
{% endif %}

{% comment %}SEO pagination for blog articles.{% endcomment %}
{% if article %}
  {% if article.older %}
    <link rel="prev" href="{{ article.older.url }}">
  {% endif %}

  {% if article.newer %}
    <link rel="next" href="{{ article.newer.url }}">
  {% endif %}
{% endif %}
