<div class="sidebar-inner">
  <div class="site-title">{% if editmode %}<span class="site-title-editable">{% editable site.header %}</span>{% else %}{{ page.site_header }}{% endif %}</div>
  {% include "mainmenu" %}
  <a href="#" class="mobile-menu-toggler"><span></span></a>
  {% if site.search.enabled %}
  <a href="#" class="mobile-search-toggler"></a>
  {% endif %}
</div>