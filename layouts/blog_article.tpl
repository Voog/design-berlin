<!DOCTYPE html>
{% include "template-variables" %}
{% include "blog-article-variables" %}
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
            <nav class="sub-menu tag-list">
              {% if article.tags.size > 0 %}
              <ul>
                {% for tag in article.tags %}
                <li><a href="{{ page.url }}/tagged/{{ tag.path }}">{{ tag.name }}</a></li>
                {% endfor %}
              </ul>
              {% endif %}
            </nav>
            <header class="post-header">
              {% assign article_year = article.created_at | format_date: "%Y" | to_num %}

              {% if article_year == current_year %}
                {% assign article_date_format = "long_without_year" %}
              {% else %}
                {% assign article_date_format = "long" %}
              {% endif %}

              <h1>{% editable article.title %} <time class="post-date" datetime="{{ article.created_at | date: '%Y-%m-%d' }}">{{ article.created_at | format_date: article_date_format }}</time></h1>
            </header>
            <section class="post-content">
              <div class="post-excerpt cfx formatted">{% editable article.excerpt %}</div>
              <div class="post-body cfx formatted" {{ edy_intro_edit_text }}>{% editable article.body %}</div>
              <div class="post-body cfx formatted">{% content name="additional_body" bind="Article" %}</div>

              {% if editmode %}
              <div class="post-tags">
              {% editable article.tags %}
              </div>
              {% endif %}
            </section>

            {% if article.older or article.newer %}
              <div class="post-nav">
                <div class="post-nav-inner">
                  {% if article.older %}
                    <a class="post-nav-link post-nav-link-older" href="{{ article.older.url }}">
                      <div class="post-nav-link-inner">
                        <div class="post-nav-direction">{{ "previous" | lc }}</div>
                        <div class="post-nav-title">{{ article.older.title }}</div>
                      </div>
                    </a>
                  {% endif %}

                  {% if article.newer %}
                    <a class="post-nav-link post-nav-link-newer" href="{{ article.newer.url }}">
                      <div class="post-nav-link-inner">
                        <div class="post-nav-direction">{{ "next" | lc }}</div>
                        <div class="post-nav-title">{{ article.newer.title }}</div>
                      </div>
                    </a>
                  {% endif %}
                </div>
              </div>
            {% endif %}

            <section class="comments formatted">
              <h3 class="comment-title">
                {% case article.comments_count %}
                  {% when 0 %}{{ "write_first_comment" | lc }}
                  {% else %}{{ 'replies' | lcc : article.comments_count }}</span>
                {% endcase %}
              </h3>
              {% include "comment-form" %}
              {% for comment in article.comments reversed %}
                <div class="comment edy-site-blog-comment">
                  <div class="comment-body">{{ comment.body_html }}</div>
                  <div class="comment-info">({{ comment.author }}, {{ comment.created_at | format_date: "long" }}) {% removebutton %}</div>
                </div>
              {% endfor %}
            </section>
          </div>
        </div>
      </div>
    </div>
    {% include "footer" %}
  </div>
  {% include "mobilemenu" %}
  {% include "site-signout" %}
  {% include "javascripts" %}
  {% include "edicy-tools" %}
</body>
</html>
