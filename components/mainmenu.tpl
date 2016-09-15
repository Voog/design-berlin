<nav class="main-menu">
  <ul>
    {% unless site.root_item.hidden? %}
      <li>
        <a href="{{site.root_item.url}}"{% if site.root_item.selected? %} class="active"{% endif %}>{{site.root_item.title}}</a>
      </li>
    {% endunless %}

    {% for item in site.visible_menuitems %}
      <li>
        <a href="{{ item.url }}" {% if item.selected? %} class="active"{% endif %}{% unless item.translated? %} class="fci-editor-menuadd untranslated"{% endunless %}>{{ item.title }}</a>
      </li>
    {% endfor %}

    {% if editmode %}
      {% if site.hidden_menuitems.size > 0 %}
        <li>{% menubtn site.hidden_menuitems %}</li>
      {% endif %}

      <li><div style="display: inline-block;" {{ edy_intro_add_page }}>{% menuadd %}</div></li>
    {% endif %}
  </ul>
</nav>
