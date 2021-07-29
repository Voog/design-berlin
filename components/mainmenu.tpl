<nav class="main-menu">
  <ul>
    {% unless site.root_item.hidden? %}
      <li>
        <a href="{{site.root_item.url}}"{% if site.root_item.selected? %} class="active"{% endif %}>{{site.root_item.title}}</a>
      </li>
    {% endunless %}

    {% for item in site.visible_menuitems %}
      {% if site.root_item.layout_title == product_list_layout %}
        {% if editmode %}
          {% include "menu-level-1-link" render_hidden_categories: true %}
        {% else %}
          {% unless show_product_related_pages_in_main_menu %}
            {% unless item.layout_title == product_list_layout or item.layout_title == product_layout %}
              {% include "menu-level-1-link" %}
            {% endunless %}
          {% else %}
            {% include "menu-level-1-link" %}
          {% endunless %}
        {% endif %}
      {% else %}
        {% include "menu-level-1-link" %}
      {% endif %}
    {% endfor %}

    {% if editmode %}
      {% if site.hidden_menuitems.size > 0 %}
        <li>{% menubtn site.hidden_menuitems %}</li>
      {% endif %}

      <li><div style="display: inline-block;" {{ edy_intro_add_page }}>{% menuadd %}</div></li>
    {% endif %}
  </ul>
</nav>