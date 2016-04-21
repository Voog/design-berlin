:root {
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.title"],
    "titleI18n": "custom_styles.size",
    "editor": "rangePicker",
    "min": 8,
    "max": 100,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --sidebar-site-title-font-size: 24px;
  /* VoogStyle
     "pathI18n": ["custom_styles.sidebar", "custom_styles.title"],
     "titleI18n": "custom_styles.line_height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 3,
     "step": 0.1,
     "unit": "em",
     "scope": "global"
  */
  --sidebar-site-title-line-height: 1.3em;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.title"],
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
  --sidebar-site-title-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.title"],
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
  --sidebar-site-title-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.title"],
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
  --sidebar-site-title-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.title"],
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
  --sidebar-site-title-text-transform: uppercase;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.title"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --sidebar-site-title-color: rgba(0, 0, 0, 0.87);
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.size",
    "editor": "rangePicker",
    "min": 8,
    "max": 100,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --sidebar-mainmenu-font-size: 14px;
  /* VoogStyle
     "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.normal"],
     "titleI18n": "custom_styles.line_height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 3,
     "step": 0.1,
     "unit": "em",
     "scope": "global"
  */
  --sidebar-mainmenu-line-height: 1.3em;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.normal"],
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
      "--sidebar-mainmenu-hover-font-weight",
      "--sidebar-mainmenu-active-font-weight"
    ]
  */
  --sidebar-mainmenu-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.hover"],
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
  --sidebar-mainmenu-hover-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.active"],
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
  --sidebar-mainmenu-active-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.normal"],
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
      "--sidebar-mainmenu-hover-font-style",
      "--sidebar-mainmenu-active-font-style"
    ]
  */
  --sidebar-mainmenu-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.hover"],
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
  --sidebar-mainmenu-hover-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.active"],
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
  --sidebar-mainmenu-active-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.normal"],
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
      "--sidebar-mainmenu-hover-text-decoration",
      "--sidebar-mainmenu-active-text-decoration"
    ]
  */
  --sidebar-mainmenu-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.hover"],
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
  --sidebar-mainmenu-hover-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.active"],
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
  --sidebar-mainmenu-active-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.normal"],
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
      "--sidebar-mainmenu-hover-text-transform",
      "--sidebar-mainmenu-active-text-transform"
    ]
  */
  --sidebar-mainmenu-text-transform: uppercase;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.hover"],
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
  --sidebar-mainmenu-hover-text-transform: uppercase;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.active"],
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
  --sidebar-mainmenu-active-text-transform: uppercase;
  /* VoogStyle
    "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true,
    "boundVariables": [
      "--sidebar-mainmenu-hover-color",
      "--sidebar-mainmenu-active-color"
    ]
  */
  --sidebar-mainmenu-color: rgba(0, 0, 0, 0.87);
 /* VoogStyle
  "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.hover"],
  "titleI18n": "custom_styles.color",
  "type": "button",
  "editor": "colorPicker",
  "scope": "global"
*/
  --sidebar-mainmenu-hover-color: rgba(0, 0, 0, 0.87);
 /* VoogStyle
  "pathI18n": ["custom_styles.sidebar", "custom_styles.main_menu", "custom_styles.active"],
  "titleI18n": "custom_styles.color",
  "type": "button",
  "editor": "colorPicker",
  "scope": "global"
*/
  --sidebar-mainmenu-active-color: rgba(0, 0, 0, 0.87);
}
