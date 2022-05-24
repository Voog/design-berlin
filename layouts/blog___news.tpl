<!DOCTYPE html>
{%- include "template-settings" -%}
{%- include "template-variables" -%}
{%- include "blog-article-variables" -%}
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
              {% if blog.has_tags? %}
              <ul>
                {% for tag in blog.tags %}
                  {% assign activestr = " " %}
                  {% for tmptag in tags %}
                    {% if tmptag.name == tag.name %}
                      {% assign activestr = " class='active'" %}
                    {% endif %}
                  {% endfor %}
                <li><a href="/{{ blog.page.path_with_lang }}/tagged/{{ tag.path }}"{{activestr}}>{{ tag.name }}</a></li>
                {% endfor %}
              </ul>
              {% endif %}
            </nav>
          </div>
          <section class="content blog-content inner cfx">
            {%- assign content_default_title = "content" | lce -%}
            {%- assign content_default_title_tooltip = "content_tooltip_specific_page" | lce -%}
            {% content title=content_default_title title_tooltip=content_default_title_tooltip %}
            {% if editmode %}
              <div class="addbutton">{% addbutton %}</div>
            {% endif %}
          </section>
          <section class="blog-list">
            {% for article in articles %}
              {% include "article-settings-variables" %}
              <div class="post-wrap">
                <div class="inner">
                  <article class="post">
                      <div class="post-title"><a href="{{ article.url }}">{{ article.title }}</a>
                        {% assign article_year = article.created_at | format_date: "%Y" | to_num %}

                        {% if article_year == current_year %}
                          {% assign article_date_format = "long_without_year" %}
                        {% else %}
                          {% assign article_date_format = "long" %}
                        {% endif %}

                        <time class="post-date{% if show_article_date != true %} hide-article-date{% endif %}{% if article_data_show_date_defined != true%} site-data{% endif %}" datetime="{{ article.created_at | date: '%Y-%m-%d' }}">{{ article.created_at | format_date: article_date_format }}</time>
                      </div>
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
  {% include "site-signout" %}
  {% include "javascripts" %}
  {% include "settings-popover", _blogPage: true %}
</body>
</html>
