-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- You can specify some parameters to influence the font selection;
-- for example, this selects a Bold, Italic font variant.
-- config.font = wezterm.font("SF Mono", { weight = "Regular", italic = false })
-- config.font = wezterm.font("Fira Code", { weight = "Regular", italic = false })
-- config.font = wezterm.font("Victor Mono", { weight = "Regular", italic = false })
config.font = wezterm.font("IBM Plex Mono", { weight = "Regular", italic = false })
-- config.font = wezterm.font("JetBrains Mono", { weight = "Regular", italic = false })
-- config.font = wezterm.font("Iosevka Term", { weight = "Regular", italic = false })
-- config.font = wezterm.font("Hack Nerd Font", { weight = "Regular", italic = false })
-- config.font = wezterm.font("GohuFont 14 Nerd Font Mono", { weight = "Regular", italic = false })
config.font_size = 17

-- modified de
--   master
--   thanks

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95
config.macos_window_background_blur = 15
config.colors = {
  -- The default text color
  foreground = '#b0b0b0',
  -- The default background color
  background = '#222222',
}

-- config.color_scheme = "MaterialDark"
-- config.color_scheme = "Monokai Pro (Gogh)"
-- config.color_scheme = "Chalk"
-- config.color_scheme = "Chalk (dark) (terminal.sexy)"
config.color_scheme = "Chalk (Gogh)"
-- config.color_scheme = "nightfox"
-- config.color_scheme = "nord"
-- config.color_scheme = "Builtin Solarized Dark"
-- config.color_scheme = "zenbones_dark"
-- config.color_scheme = 'Maia (Gogh)'
-- config.color_scheme = 'MaterialOcean'
-- config.color_scheme = 'matrix'
-- config.color_scheme = 'Mono Theme (terminal.sexy)'
-- config.color_scheme = 'Atelierheath (dark) (terminal.sexy)'
-- config.color_scheme = 'PaperColor Dark (base16)'
-- config.color_scheme = 'Papercolor Dark (Gogh)'
-- config.color_scheme = "Zenburn"
-- config.color_scheme = 'Zenburn (base16)'
-- config.color_scheme = 'zenburn (terminal.sexy)'
-- config.color_scheme = 'zenwritten_dark'
-- config.color_scheme = 'Apprentice (Gogh)'
-- config.color_scheme = 'Ashes (dark) (terminal.sexy)'
-- config.color_scheme = 'Tango (terminal.sexy)'
-- config.color_scheme = 'Github Dark (Gogh)'
-- config.color_scheme = 'Grayscale (dark) (terminal.sexy)'
-- config.color_scheme = 'Gruvbox Material (Gogh)'
-- config.color_scheme = 'Guezwhoz'
-- config.color_scheme = 'Pali (Gogh)'
-- config.color_scheme = 'Kanagawa (Gogh)'
-- config.color_scheme = 'One Dark (Gogh)'
-- config.color_scheme = 'N0tch2k'
-- config.color_scheme = 'Neutron'
-- config.color_scheme = 'Afterglow'
-- config.color_scheme = 'Afterglow (Gogh)'
--
-- config.color_scheme = 'Apprentice (Gogh)'
--
-- config.color_scheme = 'Gruvbox Dark (Gogh)'
-- config.color_scheme = 'Gruvbox Material (Gogh)'

-- Light Themes:
-- config.color_scheme = 'zenwritten_light'
-- config.color_scheme = 'Chalk (light) (terminal.sexy)'
-- config.color_scheme = 'Classic Light (base16)'
-- config.color_scheme = '3024 (light) (terminal.sexy)'
-- config.color_scheme = '3024 Day'
-- config.color_scheme = 'Alabaster'
-- config.color_scheme = 'Ashes (light) (terminal.sexy)'


-- Custom keybindings for Option key
-- config.keys = {
-- 	-- Option + Left Arrow
-- 	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
-- 	-- Option + Right Arrow
-- 	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
-- }

config.keys = {
  {
    key = "RightArrow",
    mods = "OPT",
    action = wezterm.action.SendString("\x1bf"),
  },
  {
    key = "LeftArrow",
    mods = "OPT",
    action = wezterm.action.SendString("\x1bb"),
  },
}


-- config to use left option and right option key as meta
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

-- dont ask for closing
config.window_close_confirmation = "NeverPrompt"

-- GPU-Rendering deaktivieren (manchmal schneller auf Linux)
config.front_end = "WebGpu" -- oder "OpenGL" oder "Software" ausprobieren

-- Scrollback reduzieren
config.scrollback_lines = 10000 -- statt default 3500+

-- Animation deaktivieren
config.animation_fps = 1
config.cursor_blink_rate = 0

-- Performance-Optimierungen
config.max_fps = 60

-- Font-Shaping optimieren
config.harfbuzz_features = {}

-- and finally, return the configuration to wezterm
return config
