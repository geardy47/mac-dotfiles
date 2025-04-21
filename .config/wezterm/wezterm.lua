local wezterm = require("wezterm")

return {
	default_cursor_style = "BlinkingBlock",
	color_scheme = "Catppuccin Mocha",
	-- colors = {
	-- 	cursor_bg = "#A6ACCD",
	-- 	cursor_border = "#A6ACCD",
	-- 	cursor_fg = "#1B1E28",
	-- },
	-- font
	font = wezterm.font("FantasqueSansM Nerd Font Mono", { weight = "Regular" }),
	font_size = 18,
	line_height = 1.3,
	window_background_opacity = 0.9,
	-- tab bar
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	hide_tab_bar_if_only_one_tab = true,
	tab_max_width = 999999,
	-- window_padding = {
	-- 	left = 30,
	-- 	right = 30,
	-- 	top = 30,
	-- 	bottom = 30,
	-- },
	window_decorations = "RESIZE",
	inactive_pane_hsb = {
		brightness = 0.7,
	},
	send_composed_key_when_left_alt_is_pressed = false,
	send_composed_key_when_right_alt_is_pressed = true,
	native_macos_fullscreen_mode = true,
	-- key bindings
	-- leader = mappings.leader,
	-- keys = mappings.keys,
	-- key_tables = mappings.key_tables,
}
