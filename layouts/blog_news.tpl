<!DOCTYPE html>
{% include "template-variables" %}
<html lang="{{ page.language_code }}">
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
      <div class="container-wrap cfx">
        <div class="container">
          <div class="inner">
            <nav class="sub-menu tag-list">
              {% if site.has_language_tags? %}
              <ul>
                {% for tag in site.language_tags %}
                  {% assign activestr = " " %}
                  {% for tmptag in tags %}
                    {% if tmptag.name == tag.name %}
                      {% assign activestr = " class='active'" %}
                    {% endif %}
                  {% endfor %}
                <li><a href="{{ page.url }}/tagged/{{ tag.path }}"{{activestr}}>{{ tag.name }}</a></li>
                {% endfor %}
              </ul>
              {% endif %}
            </nav>
          </div>
          <section class="content blog-content inner cfx" {{ edy_intro_edit_text }}>
            {% content %}
            {% if editmode %}<div style="padding-top: 20px">{% addbutton %}</div>{% endif %}
          </section>
          <section class="blog-list">
            {% for article in articles %}
              <div class="post-wrap">
                <div class="inner">
                  <article class="post">
                      <div class="post-title"><a href="{{ article.url }}">{{ article.title }}</a> <time class="post-date" datetime="{{ article.created_at | date : "%Y-%m-%d" }}">{{ article.created_at | date : "%d.%m" }}</time></div>
                  </article>
                </div>
              </div>
            {% endfor %}
          </section>
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
