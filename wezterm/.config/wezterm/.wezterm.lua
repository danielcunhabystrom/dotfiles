local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Disable fancy tab style
config.use_fancy_tab_bar = false

-- Hide the tab bar if there is only one tab
config.hide_tab_bar_if_only_one_tab = true

-- Set window opacity
config.window_background_opacity = 0.8

-- Maximized window on start up
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- launch directly into Linux 
config.default_domain = 'WSL:Ubuntu'

-- Color scheme:
config.color_scheme = 'tokyonight_night'

config.window_decorations = "RESIZE"

-- return the configuration to wezterm
return config