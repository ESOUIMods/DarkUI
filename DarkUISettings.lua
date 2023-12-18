darkui = darkui or {}
local LAM = LibAddonMenu2

local iconTexturesList = {
  [1] = GetString(DARKUI_DARK),
  [2] = GetString(DARKUI_LIGHT),
  [3] = GetString(DARKUI_MIXED),
}

local iconQuick_Menu_Color_List = {
  [1] = GetString(DARKUI_BLUE),
  [2] = GetString(DARKUI_DARK),
  [3] = GetString(DARKUI_LIGHT),
}

local panelData = {
  type = "panel",
  name = "DarkUI",
  displayName = ZO_HIGHLIGHT_TEXT:Colorize("|c7f7f7fDark|cada684UI|r"),
  website = "https://www.esoui.com/downloads/info1576-DarkUI.html",
  author = "|cada684Jhenox|r",
  registerForDefaults = true,
  registerForRefresh = true,
  version = darkui.version,
  slashCommand = "/darkui",
}

local optionsData = {}
optionsData[#optionsData + 1] = {
  type = "description",
  text = GetString(DARKUI_UNINSTALL_DESC),
}
optionsData[#optionsData + 1] = {
  type = "description",
  text = GetString(DARKUI_EXITGAME_DESC),
}
optionsData[#optionsData + 1] = {
  type = "header",
  name = GetString(DARKUI_HEADER_THEME_SETTING),
}
optionsData[#optionsData + 1] = {
  type = "dropdown",
  name = GetString(DARKUI_COLOR_THEME_NAME),
  tooltip = GetString(DARKUI_COLOR_THEME_TOOLTIP),
  choices = iconTexturesList,
  default = GetString(DARKUI_DARK),
  getFunc = function() return darkui.SV.Icon end,
  setFunc = function(val) darkui.SV.Icon = val end,
}
optionsData[#optionsData + 1] = {
  type = "header",
  name = GetString(DARKUI_HEADER_BAR_SETTINGS),
}
optionsData[#optionsData + 1] = {
  type = "checkbox",
  name = GetString(DARKUI_COLOR_BAR_TEXTURES_NAME),
  tooltip = GetString(DARKUI_COLOR_BAR_TEXTURES_TOOLTIP),
  default = false,
  getFunc = function() return darkui.SV.Bar_Textures_Only end,
  setFunc = function(val) darkui.SV.Bar_Textures_Only = val end,
}
optionsData[#optionsData + 1] = {
  type = "checkbox",
  name = GetString(DARKUI_GLOSSY_BARS_NAME),
  tooltip = GetString(DARKUI_GLOSSY_BARS_TOOLTIP),
  default = false,
  getFunc = function() return darkui.SV.Glossy end,
  setFunc = function(val) darkui.SV.Glossy = val end,
}
optionsData[#optionsData + 1] = {
  type = "checkbox",
  name = GetString(DARKUI_BAR_OVERLAY_NAME),
  tooltip = GetString(DARKUI_BAR_OVERLAY_TOOLTIP),
  warning = GetString(DARKUI_BAR_OVERLAY_WARNING),
  default = false,
  getFunc = function() return darkui.SV.Theme_Overlay end,
  setFunc = function(val) darkui.SV.Theme_Overlay = val end,
}
optionsData[#optionsData + 1] = {
  type = "checkbox",
  name = GetString(DARKUI_DARKER_BARS_NAME),
  tooltip = GetString(DARKUI_DARKER_BARS_TOOLTIP),
  default = false,
  getFunc = function() return darkui.SV.Darker_Bars end,
  setFunc = function(val) darkui.SV.Darker_Bars = val end,
}
optionsData[#optionsData + 1] = {
  type = "header",
  name = GetString(DARKUI_HEADER_GENERAL_SETTINGS),
}
optionsData[#optionsData + 1] = {
  type = "checkbox",
  name = GetString(DARKUI_LOWER_TRANSPARENCY_BACKGROUNDS_NAME),
  tooltip = GetString(DARKUI_LOWER_TRANSPARENCY_BACKGROUNDS_TOOLTIP),
  default = false,
  getFunc = function() return darkui.SV.Low_Transparency_Backgrounds end,
  setFunc = function(val) darkui.SV.Low_Transparency_Backgrounds = val end,
  disabled = function() return darkui.SV.Bar_Textures_Only end,
}
optionsData[#optionsData + 1] = {
  type = "checkbox",
  name = GetString(DARKUI_USE_DARKUI_ICONS_NAME),
  tooltip = GetString(DARKUI_USE_DARKUI_ICONS_TOOLTIP),
  default = true,
  getFunc = function() return darkui.SV.Use_Icons end,
  setFunc = function(val) darkui.SV.Use_Icons = val end,
  disabled = function() return darkui.SV.Bar_Textures_Only end,
}
optionsData[#optionsData + 1] = {
  type = "checkbox",
  name = GetString(DARKUI_HIDE_STATUS_METER_BACKGROUND_NAME),
  tooltip = GetString(DARKUI_HIDE_STATUS_METER_BACKGROUND_TOOLTIP),
  default = false,
  getFunc = function() return darkui.SV.Hide_Status_Meter_Background end,
  setFunc = function(val) darkui.SV.Hide_Status_Meter_Background = val end,
  disabled = function() return darkui.SV.Bar_Textures_Only end,
}
optionsData[#optionsData + 1] = {
  type = "header",
  name = GetString(DARKUI_HEADER_COMMUNITY_CONTRIBUTIONS),
}
optionsData[#optionsData + 1] = {
  type = "checkbox",
  name = GetString(DARKUI_SMOOTHER_BACKGROUNDS_NAME),
  tooltip = GetString(DARKUI_SMOOTHER_BACKGROUNDS_TOOLTIP),
  default = false,
  getFunc = function() return darkui.SV.Smooth_Backgrounds end,
  setFunc = function(val) darkui.SV.Smooth_Backgrounds = val end,
  disabled = function() return darkui.SV.Bar_Textures_Only end,
}
optionsData[#optionsData + 1] = {
  type = "checkbox",
  name = GetString(DARKUI_SKOOMA_EYE_NAME),
  tooltip = GetString(DARKUI_SKOOMA_EYE_TOOLTIP),
  default = false,
  getFunc = function() return darkui.SV.Quick_Menu_Skooma_Eye end,
  setFunc = function(val) darkui.SV.Quick_Menu_Skooma_Eye = val end,
  disabled = function() return darkui.SV.Bar_Textures_Only end,
}
optionsData[#optionsData + 1] = {
  type = "header",
  name = GetString(DARKUI_HEADER_KEYBOARD_SETTINGS),
}
optionsData[#optionsData + 1] = {
  type = "dropdown",
  name = GetString(DARKUI_RADIAL_MENU_COLOR_NAME),
  tooltip = GetString(DARKUI_RADIAL_MENU_COLOR_TOOLTIP),
  choices = iconQuick_Menu_Color_List,
  default = GetString(DARKUI_BLUE),
  getFunc = function() return darkui.SV.Quick_Menu_Color end,
  setFunc = function(val) darkui.SV.Quick_Menu_Color = val end,
  disabled = function() return darkui.SV.Bar_Textures_Only end,
}
optionsData[#optionsData + 1] = {
  type = "checkbox",
  name = GetString(DARKUI_COMPASS_ENDS_NAME),
  tooltip = GetString(DARKUI_COMPASS_ENDS_TOOLTIP),
  default = false,
  getFunc = function() return darkui.SV.Compass_Angled end,
  setFunc = function(val) darkui.SV.Compass_Angled = val end,
  disabled = function() return darkui.SV.Bar_Textures_Only end,
}
optionsData[#optionsData + 1] = {
  type = "checkbox",
  name = GetString(DARKUI_HIDE_GROUP_FRAME_BACKGROUNDS_NAME),
  tooltip = GetString(DARKUI_HIDE_GROUP_FRAME_BACKGROUNDS_TOOLTIP),
  default = false,
  getFunc = function() return darkui.SV.Hide_Group_Frame_Background end,
  setFunc = function(val) darkui.SV.Hide_Group_Frame_Background = val end,
  disabled = function() return darkui.SV.Bar_Textures_Only end,
}
optionsData[#optionsData + 1] = {
  type = "checkbox",
  name = GetString(DARKUI_INTERACTKEY_ENDS_NAME),
  tooltip = GetString(DARKUI_INTERACTKEY_ENDS_TOOLTIP),
  default = false,
  getFunc = function() return darkui.SV.Interact_Key end,
  setFunc = function(val) darkui.SV.Interact_Key = val end,
  disabled = function() return darkui.SV.Bar_Textures_Only end,
}
optionsData[#optionsData + 1] = {
  type = "header",
  name = GetString(DARKUI_HEADER_GAMEPAD_SETTINGS),
}
optionsData[#optionsData + 1] = {
  type = "checkbox",
  name = GetString(DARKUI_GRAYSCALE_CONSOLE_BUTTONS_NAME),
  tooltip = GetString(DARKUI_GRAYSCALE_CONSOLE_BUTTONS_TOOLTIP),
  default = false,
  getFunc = function() return darkui.SV.Gamepad_Grayscale_Buttons end,
  setFunc = function(val) darkui.SV.Gamepad_Grayscale_Buttons = val end,
  disabled = function() return darkui.SV.Bar_Textures_Only end,
}
optionsData[#optionsData + 1] = {
  type = "header",
  name = "",
}
optionsData[#optionsData + 1] = {
  type = "button",
  name = "Reload UI",
  tooltip = GetString(DARKUI_RELOAD),
  width = "full",
  func = function() ReloadUI("ingame") end,
}

function darkui:initLAM()
  LAM:RegisterOptionControls("DarkUI", optionsData)
  LAM:RegisterAddonPanel("DarkUI", panelData)
end