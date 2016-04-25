:root {
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.sub_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.size",
    "editor": "rangePicker",
    "min": 8,
    "max": 100,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --content-submenu-font-size: 14px;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.sub_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.font_weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global",
    "boundVariables": [
      "--content-submenu-hover-font-weight",
      "--content-submenu-active-font-weight"
    ]
  */
  --content-submenu-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.sub_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.font_weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --content-submenu-hover-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.sub_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.font_weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --content-submenu-active-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.sub_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.font_style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global",
    "boundVariables": [
      "--content-submenu-hover-font-style",
      "--content-submenu-active-font-style"
    ]
  */
  --content-submenu-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.sub_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.font_style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --content-submenu-hover-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.sub_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.font_style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --content-submenu-active-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.sub_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.text_decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global",
    "boundVariables": [
      "--content-submenu-hover-text-decoration",
      "--content-submenu-active-text-decoration"
    ]
  */
  --content-submenu-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.sub_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.text_decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --content-submenu-hover-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.sub_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.text_transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global",
    "boundVariables": [
      "--content-submenu-hover-text-transform",
      "--content-submenu-active-text-transform"
    ]
  */
  --content-submenu-text-transform: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.sub_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.text_transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --content-submenu-hover-text-transform: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.sub_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.text_transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --content-submenu-active-text-transform: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.text"],
    "titleI18n": "custom_styles.size",
    "editor": "rangePicker",
    "min": 8,
    "max": 60,
    "unit": "px",
    "scope": "global",
    "featured": true,
    "boundVariables": [
      "--form-field-text-font-size",
      "--content-button-font-size"
    ]
  */
  --content-font-size: 18px;
  /* VoogStyle
     "pathI18n": ["custom_styles.content", "custom_styles.text"],
     "titleI18n": "custom_styles.line_height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 3,
     "step": 0.1,
     "unit": "em",
     "scope": "global"
  */
  --content-line-height: 1.7em;
  /* VoogStyle
     "pathI18n": ["custom_styles.content", "custom_styles.text"],
     "titleI18n": "custom_styles.alignment",
     "editor": "listPicker",
     "list": {{ base_alignment_set }},
     "scope": "global"
  */
  --content-alignment: left;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.link", "custom_styles.normal"],
    "titleI18n": "custom_styles.font_weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global",
    "boundVariables": [
      "--content-links-hover-font-weight"
    ]
  */
  --content-links-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.link", "custom_styles.hover"],
    "titleI18n": "custom_styles.font_weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --content-links-hover-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.link", "custom_styles.normal"],
    "titleI18n": "custom_styles.font_style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global",
    "boundVariables": [
      "--content-links-hover-font-style"
    ]
  */
  --content-links-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.link", "custom_styles.hover"],
    "titleI18n": "custom_styles.font_style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --content-links-hover-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.link", "custom_styles.normal"],
    "titleI18n": "custom_styles.text_decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global",
    "boundVariables": [
      "--content-links-hover-text-decoration"
    ]
  */
  --content-links-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.link", "custom_styles.hover"],
    "titleI18n": "custom_styles.text_decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --content-links-hover-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.link", "custom_styles.normal"],
    "titleI18n": "custom_styles.text_transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global",
    "boundVariables": [
      "--content-links-hover-text-transform"
    ]
  */
  --content-links-text-transform: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.link", "custom_styles.hover"],
    "titleI18n": "custom_styles.text_transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --content-links-hover-text-transform: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.content", "custom_styles.link", "custom_styles.normal"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --content-links-color: #0066bb;
 /* VoogStyle
  "pathI18n": ["custom_styles.content", "custom_styles.link", "custom_styles.hover"],
  "titleI18n": "custom_styles.color",
  "type": "button",
  "editor": "colorPicker",
  "scope": "global"
*/
  --content-links-hover-color: rgba(0, 102, 187, 0.8);
}
