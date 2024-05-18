-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end
local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom.background = "#000000"
custom.tab_bar.background = "#040404"
custom.tab_bar.inactive_tab.bg_color = "#0f0f0f"
custom.tab_bar.new_tab.bg_color = "#080808"
config.color_scheme = "OLEDppuccin"
config.color_schemes = {
	OLEDppuccin = custom,
}
config.font = wezterm.font("ProggyCleanTTSZ Nerd Font Mono")
-- config.font = wezterm.font("Monaspace Nerd Font Mono")
config.term = "screen-256color"
-- config.font = wezterm.font("Monaspace Argon")
-- config.font = wezterm.font("Monaspace Krypton")
-- config.font = wezterm.font("Monaspace Xenon")
-- config.font = wezterm.font("Monaspace Radon")
-- config.font = wezterm.font("BigBlueTermPlus Nerd Font Mono")
config.font_size = 28.0
-- config.font_size = 30.0
config.freetype_load_flags = "NO_HINTING"
config.freetype_load_target = "Mono"
config.freetype_render_target = "HorizontalLcd"
config.cursor_blink_rate = 600
config.animation_fps = 120
config.default_cursor_style = "SteadyBlock"
config.cell_width = 0.86
config.line_height = 1
config.window_padding = {
	left = 1,
	right = 1,
	top = 1,
	bottom = 1,
}
config.hide_tab_bar_if_only_one_tab = true
config.max_fps = 120
config.use_fancy_tab_bar = false
config.display_pixel_geometry = "BGR"
config.window_decorations = "RESIZE"
config.initial_cols = 100
config.initial_rows = 32

--- initial shell
config.default_prog = {
	"/bin/zsh",
	"-l",
	-- "-c",
	-- "tmux -u attach || tmux -u new-session -s main",
}
-- local mux = wezterm.mux

-- wezterm.on("gui-attached", function(domain)
-- 	-- maximize all displayed windows on startup
-- 	local workspace = mux.get_active_workspace()
-- 	for _, window in ipairs(mux.all_windows()) do
-- 		if window:get_workspace() == workspace then
-- 			window:gui_window():maximize()
-- 		end
-- 	end
-- end)

-- and finally, return the configuration to wezterm
return config
