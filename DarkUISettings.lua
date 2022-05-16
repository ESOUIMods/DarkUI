local LAM = LibAddonMenu2

local iconTexturesList = {
  [1] = GetString(SI_DARKUI_DARK),
  [2] = GetString(SI_DARKUI_LIGHT),
  [3] = GetString(SI_DARKUI_MIXED),
}

local iconQuick_Menu_Color_List = {
  [1] = GetString(SI_DARKUI_BLUE),
  [2] = GetString(SI_DARKUI_DARK),
  [3] = GetString(SI_DARKUI_LIGHT),
}

local panelData = {
  type = "panel",
  name = "DarkUI",
  displayName = ZO_HIGHLIGHT_TEXT:Colorize("|c7f7f7fDark|cada684UI|r"),
  author = "|cada684Jhenox|r",
  registerForDefaults = true,
  --version = ADDON_VERSION,

  slashCommand = "/dui",
}

local optionsData = {
  [1] = {
    type = "header",
    name = GetString(SI_DARKUI_HEADER_GENERAL_SETTINGS),
  },
  [2] = {
    type = "dropdown",
    name = GetString(SI_DARKUI_COLOR_THEME_NAME),
    tooltip = GetString(SI_DARKUI_COLOR_THEME_TOOLTIP),
    warning = GetString(SI_DARKUI_RELOAD),
    choices = iconTexturesList,
    default = GetString(SI_DARKUI_DARK),
    getFunc = function() return dui.SV.Icon end,
    setFunc = function(val) dui.SV.Icon = val end,
  },
  [3] = {
    type = "checkbox",
    name = GetString(SI_DARKUI_GLOSSY_BARS_NAME),
    tooltip = GetString(SI_DARKUI_GLOSSY_BARS_TOOLTIP),
    default = false,
    getFunc = function() return dui.SV.Glossy end,
    setFunc = function(val) dui.SV.Glossy = val end,
  },
  [4] = {
    type = "checkbox",
    name = GetString(SI_DARKUI_BAR_OVERLAY_NAME),
    tooltip = GetString(SI_DARKUI_BAR_OVERLAY_TOOLTIP),
    warning = GetString(SI_DARKUI_BAR_OVERLAY_WARNING),
    default = false,
    getFunc = function() return dui.SV.Theme_Overlay end,
    setFunc = function(val) dui.SV.Theme_Overlay = val end,
  },
  [5] = {
    type = "checkbox",
    name = GetString(SI_DARKUI_DARKER_BARS_NAME),
    tooltip = GetString(SI_DARKUI_DARKER_BARS_TOOLTIP),
    default = false,
    getFunc = function() return dui.SV.Darker_Bars end,
    setFunc = function(val) dui.SV.Darker_Bars = val end,
  },
  [6] = {
    type = "checkbox",
    name = GetString(SI_DARKUI_LOWER_TRANSPARENCY_BACKGROUNDS_NAME),
    tooltip = GetString(SI_DARKUI_LOWER_TRANSPARENCY_BACKGROUNDS_TOOLTIP),
    warning = GetString(SI_DARKUI_RELOAD),
    default = false,
    getFunc = function() return dui.SV.Low_Transparency_Backgrounds end,
    setFunc = function(val) dui.SV.Low_Transparency_Backgrounds = val end,
  },
  [7] = {
    type = "checkbox",
    name = GetString(SI_DARKUI_USE_DARKUI_ICONS_NAME),
    tooltip = GetString(SI_DARKUI_USE_DARKUI_ICONS_TOOLTIP),
    default = true,
    getFunc = function() return dui.SV.Use_Icons end,
    setFunc = function(val) dui.SV.Use_Icons = val end,
  },
  [8] = {
    type = "checkbox",
    name = GetString(SI_DARKUI_HIDE_STATUS_METER_BACKGROUND_NAME),
    tooltip = GetString(SI_DARKUI_HIDE_STATUS_METER_BACKGROUND_TOOLTIP),
    default = false,
    getFunc = function() return dui.SV.Hide_Status_Meter_Background end,
    setFunc = function(val) dui.SV.Hide_Status_Meter_Background = val end,
  },
  [9] = {
    type = "header",
    name = GetString(SI_DARKUI_HEADER_COMMUNITY_CONTRIBUTIONS),
  },
  [10] = {
    type = "checkbox",
    name = GetString(SI_DARKUI_SMOOTHER_BACKGROUNDS_NAME),
    tooltip = GetString(SI_DARKUI_SMOOTHER_BACKGROUNDS_TOOLTIP),
    warning = GetString(SI_DARKUI_RELOAD),
    default = false,
    getFunc = function() return dui.SV.Smooth_Backgrounds end,
    setFunc = function(val) dui.SV.Smooth_Backgrounds = val end,
  },
  [11] = {
    type = "checkbox",
    name = GetString(SI_DARKUI_SKOOMA_EYE_NAME),
    tooltip = GetString(SI_DARKUI_SKOOMA_EYE_TOOLTIP),
    default = false,
    getFunc = function() return dui.SV.Quick_Menu_Skooma_Eye end,
    setFunc = function(val) dui.SV.Quick_Menu_Skooma_Eye = val end,
  },
  [12] = {
    type = "header",
    name = GetString(SI_DARKUI_HEADER_KEYBOARD_SETTINGS),
  },
  [13] = {
    type = "dropdown",
    name = GetString(SI_DARKUI_RADIAL_MENU_COLOR_NAME),
    tooltip = GetString(SI_DARKUI_RADIAL_MENU_COLOR_TOOLTIP),
    warning = GetString(SI_DARKUI_RELOAD),
    choices = iconQuick_Menu_Color_List,
    default = GetString(SI_DARKUI_BLUE),
    getFunc = function() return dui.SV.Quick_Menu_Color end,
    setFunc = function(val) dui.SV.Quick_Menu_Color = val end,
  },
  [14] = {
    type = "checkbox",
    name = GetString(SI_DARKUI_COMPASS_ENDS_NAME),
    tooltip = GetString(SI_DARKUI_COMPASS_ENDS_TOOLTIP),
    default = false,
    getFunc = function() return dui.SV.Compass_Angled end,
    setFunc = function(val) dui.SV.Compass_Angled = val end,
  },
  [15] = {
    type = "checkbox",
    name = GetString(SI_DARKUI_HIDE_GROUP_FRAME_BACKGROUNDS_NAME),
    tooltip = GetString(SI_DARKUI_HIDE_GROUP_FRAME_BACKGROUNDS_TOOLTIP),
    default = false,
    getFunc = function() return dui.SV.Hide_Group_Frame_Background end,
    setFunc = function(val) dui.SV.Hide_Group_Frame_Background = val end,
  },
  [16] = {
    type = "checkbox",
    name = GetString(SI_DARKUI_INTERACTKEY_ENDS_NAME),
    tooltip = GetString(SI_DARKUI_INTERACTKEY_ENDS_TOOLTIP),
    default = false,
    getFunc = function() return dui.SV.Interact_Key end,
    setFunc = function(val) dui.SV.Interact_Key = val end,
  },
  [17] = {
    type = "header",
    name = GetString(SI_DARKUI_HEADER_GAMEPAD_SETTINGS),
  },
  [18] = {
    type = "checkbox",
    name = GetString(SI_DARKUI_GRAYSCALE_CONSOLE_BUTTONS_NAME),
    tooltip = GetString(SI_DARKUI_GRAYSCALE_CONSOLE_BUTTONS_TOOLTIP),
    default = false,
    getFunc = function() return dui.SV.Gamepad_Grayscale_Buttons end,
    setFunc = function(val) dui.SV.Gamepad_Grayscale_Buttons = val end,
  },
  [19] = {
    type = "header",
    name = "",
  },
  [20] = {
    type = "button",
    name = "Reload UI",
    tooltip = GetString(SI_DARKUI_RELOAD),
    width = "full",
    func = function() ReloadUI("ingame") end,
  },
}

function dui:initLAM()
  LAM:RegisterOptionControls("DarkUI", optionsData)
  LAM:RegisterAddonPanel("DarkUI", panelData)
end