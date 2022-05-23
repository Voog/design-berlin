<footer class="footer">
  <div class="footer-inner formatted">
    <div class="cfx">
      {% include "search" %}

      {%- assign footer_content_title_tooltip = "content_tooltip_all_pages_same_language" | lce -%}
      {% xcontent name="footer" title_tooltip=footer_content_title_tooltip %}
    </div>
    <div class="voog-reference">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div>
  </div>
  {% if page.private? %}
    <div class="signout-btn-pad"></div>
  {% endif %}
</footer>
