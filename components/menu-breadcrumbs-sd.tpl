{%- assign breadcrumbsString = breadcrumbsScript | replace: '<script type="application/ld+json">', '' | replace: "</script>", '' | replace: site.url, '' | replace: '@', '' -%}
{%- assign breadcrumbsObj = breadcrumbsString | json_parse -%}

<ul class="menu menu-horizontal menu-public menu-breadcrumbs" data-search-indexing-allowed="false">
  {%- for listItem in breadcrumbsObj.itemListElement %}
    {%- assign pageUrl = page.url | remove_first: "/" -%}

    <li class="menu-item {% if forloop.last %}current-page{% endif %}">
      <a href="/{{ listItem.item.id }}">
        {{ listItem.item.name }}
      </a>
    </li>
    {% if forloop.rindex > 1 %}
      <span class="menu-separator">/</span>
    {% endif %}
  {% endfor -%}
</ul>
