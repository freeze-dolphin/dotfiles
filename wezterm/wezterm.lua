-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'nord'

config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font = wezterm.font_with_fallback {
  'WenQuanYi Micro Hei Mono'
}

config.enable_tab_bar = false
--config.hide_tab_bar_if_only_one_tab = true
--config.use_fancy_tab_bar = false
--config.tab_max_width = 32
--config.tab_bar_at_bottom = true

-- and finally, return the configuration to wezterm
return config

