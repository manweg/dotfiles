-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 14

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.90
-- config.macos_window_background_blur = 10

-- -- Farbschema
-- config.colors = {
--   -- cursor_bg = "#E5E9F0",

--   foreground = "#D8DEE9",
--   background = "#2E3440",
--   ansi = {
--     '#3b4252', '#BF616A', '#A3BE8C', '#EBCB8B', '#81A1C1', '#B48EAD', '#88C0D0', '#E5E9F0',
--   },
--   brights = {
--     '#4C566A', '#BF616A', '#A3BE8C', '#EBCB8B', '#81A1C1', '#B48EAD', '#8FBCBB', '#E5E9F0',
--   },
-- }

config.color_scheme = 'Bluloco Zsh Light (Gogh)'

-- Custom keybindings for Option key
config.keys = {
  -- Option + Left Arrow
  { key = "LeftArrow",  mods = "OPT", action = wezterm.action { SendString = "\x1bb" } },
  -- Option + Right Arrow
  { key = "RightArrow", mods = "OPT", action = wezterm.action { SendString = "\x1bf" } },
}

-- and finally, return the configuration to wezterm
return config
