<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "edicy-tools-variables" %}
  {% include "html-head" %}
</head>
<body class="{% if site.search.enabled %}search-enabled{% endif %}{% if editmode %} editmode{% endif %}">
  <div class="wrap cfx">
    {% include "langmenu" %}
    {% include "topbar" %}
    <aside class="sidebar">
      {% include "sidebar" %}
    </aside>
    <div class="main">
      <div class="inner">
        <div class="container-wrap cfx">
          <div class="container">
            {% include "submenu" %}
            <section class="content cfx formatted">
              {% contentblock name="content_header" publish_default_content="true" %}<h1>{{ page.title }}</h1>{% endcontentblock %}
              {% content %}
            </section>
          </div>
        </div>
      </div>
      {% include "footer" %}
    </div>
  </div>
  {% include "mobilemenu" %}
  {% include "javascripts" %}
  {% include "edicy-tools" %}
</body>
</html>
