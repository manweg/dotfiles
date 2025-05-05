-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- You can specify some parameters to influence the font selection;
-- for example, this selects a Bold, Italic font variant.
config.font = wezterm.font("SF Mono", { weight = "Regular", italic = false })
-- config.font = wezterm.font("Fira Code", { weight = "Regular", italic = false })
-- config.font = wezterm.font("Victor Mono", { weight = "Regular", italic = false })
-- config.font = wezterm.font("IBM Plex Mono", { weight = "Regular", italic = false })
-- config.font = wezterm.font("JetBrains Mono", { weight = "Regular", italic = false })
-- config.font = wezterm.font("Hack Nerd Font", { weight = "Regular", italic = false })
-- config.font = wezterm.font("GohuFont 14 Nerd Font Mono", { weight = "Regular", italic = false })
config.font_size = 15

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.80
config.macos_window_background_blur = 15

-- config.colors = require("cyberdream-light")
-- config.color_scheme = "Bluloco Zsh Light (Gogh)"
-- config.color_scheme = "MaterialDarker"
-- config.color_scheme = "MaterialDark"
-- config.color_scheme = "Monokai Pro (Gogh)"
-- config.color_scheme = "Chalk"
-- config.color_scheme = "nightfox"
-- config.color_scheme = "nord"
-- config.color_scheme = "Chalk (dark) (terminal.sexy)"
-- config.color_scheme = "Builtin Solarized Dark"
-- config.color_scheme = "zenbones_dark"
-- config.color_scheme = 'Maia (Gogh)'
-- config.color_scheme = 'MaterialOcean'
-- config.color_scheme = 'matrix'
-- config.color_scheme = 'Mono Theme (terminal.sexy)'
-- config.color_scheme = 'Atelierheath (dark) (terminal.sexy)'
config.color_scheme = "Chalk (Gogh)"

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
