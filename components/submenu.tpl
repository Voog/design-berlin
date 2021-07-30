{%- capture lvl2 -%}
  {% for level2 in page.menuitem.visible_children %}
    {% if level2.layout_title != product_layout and level2.layout_title != product_list_layout %}
      <li>
        <a href="{{level2.url}}"{% if level2.selected? %} class="active"{% endif %}{% unless level2.translated? %} class="untranslated fci-editor-menuadd"{% endunless %}>{{level2.title}}</a>
      </li>
    {% endif %}
  {% endfor %}
  {% if editmode %}
    {% if level2.layout_title != product_layout  %}
      {% if page.menuitem.hidden_children.size > 0 %}
        <li class="edy-btn">{% menubtn page.menuitem.hidden_children %}</li>
      {% endif %}
      <li class="edy-btn">{% menuadd parent=page%}</li>
    {% endif %}
  {% endif %}
{%- endcapture -%}


  <nav class="sub-menu">
    {%- if lvl2 != blank page.level > 0 -%}
      <ul>
        {{ lvl2 }}
      </ul>
    {%- endif -%}
  </nav>
