:root {
  /* VoogStyle
     "pathI18n": ["sidebar"],
     "titleI18n": "background_color",
     "editor": "colorPicker",
     "scope": "global",
     "featured": true
  */
  --sidebar-background-color: white;
  /* VoogStyle
    "pathI18n": ["sidebar", "title"],
    "titleI18n": "size",
    "editor": "rangePicker",
    "min": 8,
    "max": 100,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --sidebar-site-title-font-size: 36px;
  /* VoogStyle
     "pathI18n": ["sidebar", "title"],
     "titleI18n": "line_height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 3,
     "step": 0.1,
     "unit": "em",
     "scope": "global"
  */
  --sidebar-site-title-line-height: 1.05em;
  /* VoogStyle
    "pathI18n": ["sidebar", "title"],
    "titleI18n": "font_weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --sidebar-site-title-font-weight: 600;
  /* VoogStyle
    "pathI18n": ["sidebar", "title"],
    "titleI18n": "font_style",
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
    "pathI18n": ["sidebar", "title"],
    "titleI18n": "text_decoration",
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
    "pathI18n": ["sidebar", "title"],
    "titleI18n": "text_transform",
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
    "pathI18n": ["sidebar", "title"],
    "titleI18n": "color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --sidebar-site-title-color: #222;
  /* VoogStyle
    "pathI18n": ["sidebar", "main_menu", "normal"],
    "titleI18n": "size",
    "editor": "rangePicker",
    "min": 8,
    "max": 100,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --sidebar-mainmenu-font-size: 14px;
  /* VoogStyle
     "pathI18n": ["sidebar", "main_menu", "normal"],
     "titleI18n": "line_height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 3,
     "step": 0.1,
     "unit": "em",
     "scope": "global"
  */
  --sidebar-mainmenu-line-height: 1.05em;
  /* VoogStyle
    "pathI18n": ["sidebar", "main_menu", "normal"],
    "titleI18n": "font_weight",
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
    "pathI18n": ["sidebar", "main_menu", "hover"],
    "titleI18n": "font_weight",
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
    "pathI18n": ["sidebar", "main_menu", "active"],
    "titleI18n": "font_weight",
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
    "pathI18n": ["sidebar", "main_menu", "normal"],
    "titleI18n": "font_style",
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
    "pathI18n": ["sidebar", "main_menu", "hover"],
    "titleI18n": "font_style",
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
    "pathI18n": ["sidebar", "main_menu", "active"],
    "titleI18n": "font_style",
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
    "pathI18n": ["sidebar", "main_menu", "normal"],
    "titleI18n": "text_decoration",
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
    "pathI18n": ["sidebar", "main_menu", "hover"],
    "titleI18n": "text_decoration",
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
    "pathI18n": ["sidebar", "main_menu", "active"],
    "titleI18n": "text_decoration",
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
    "pathI18n": ["sidebar", "main_menu", "normal"],
    "titleI18n": "text_transform",
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
    "pathI18n": ["sidebar", "main_menu", "hover"],
    "titleI18n": "text_transform",
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
    "pathI18n": ["sidebar", "main_menu", "active"],
    "titleI18n": "text_transform",
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
    "pathI18n": ["sidebar", "main_menu", "normal"],
    "titleI18n": "color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --sidebar-mainmenu-color: #848484;
 /* VoogStyle
  "pathI18n": ["sidebar", "main_menu", "hover"],
  "titleI18n": "color",
  "type": "button",
  "editor": "colorPicker",
  "scope": "global"
*/
  --sidebar-mainmenu-hover-color: #222;
 /* VoogStyle
  "pathI18n": ["sidebar", "main_menu", "active"],
  "titleI18n": "color",
  "type": "button",
  "editor": "colorPicker",
  "scope": "global"
*/
  --sidebar-mainmenu-active-color: #222;
  /* VoogStyle
    "pathI18n": ["sidebar", "footer", "text"],
    "titleI18n": "color",
    "editor": "colorPicker",
    "scope": "global",
    "featured": "true"
  */
  --sidebar-footer-color: #222;
  /* VoogStyle
    "pathI18n": ["sidebar", "footer", "text"],
    "titleI18n": "size",
    "editor": "rangePicker",
    "min": 8,
    "max": 60,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --sidebar-footer-font-size: 11px;
  /* VoogStyle
     "pathI18n": ["sidebar", "footer", "text"],
     "titleI18n": "line_height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 3,
     "step": 0.1,
     "unit": "em",
     "scope": "global"
  */
  --sidebar-footer-line-height: 1.6em;
}
