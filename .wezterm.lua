-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 14

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.90
config.macos_window_background_blur = 15

-- config.colors = require("cyberdream-light")
-- config.color_scheme = "Bluloco Zsh Light (Gogh)"
-- config.color_scheme = "MaterialDarker"
-- config.color_scheme = "MaterialDark"
-- config.color_scheme = "Monokai Pro (Gogh)"
-- config.color_scheme = "Chalk"
-- config.color_scheme = "nightfox"
-- config.color_scheme = "nord"
-- config.color_scheme = "Chalk (Gogh)"
config.color_scheme = "Chalk (dark) (terminal.sexy)"

-- Custom keybindings for Option key
config.keys = {
	-- Option + Left Arrow
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	-- Option + Right Arrow
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
}

-- config to use left option and right option key as meta
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

-- dont ask for closing
config.window_close_confirmation = "NeverPrompt"

-- and finally, return the configuration to wezterm
return config
