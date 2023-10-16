local wezterm = require("wezterm")

local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "tokyonight_moon"
		-- return "Catppuccin Frappe"
	else
		return "Catppuccin Latte"
	end
end

local config = {
	color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
	font = wezterm.font_with_fallback({
		"JetBrains Mono",
		-- "Rec Mono Duotone",
		{ family = "Symbols Nerd Font Mono", scale = 0.75 },
	}),
	window_background_opacity = 1,
	macos_window_background_blur = 0,
	force_reverse_video_cursor = true,
	window_decorations = "RESIZE",
	use_cap_height_to_scale_fallback_fonts = true,
	font_size = 13,
	scrollback_lines = 1000,
	hide_tab_bar_if_only_one_tab = true,
	window_close_confirmation = "NeverPrompt",
	window_padding = { left = 20, right = 5, top = 10, bottom = 0 },
	send_composed_key_when_left_alt_is_pressed = false,
	send_composed_key_when_right_alt_is_pressed = true,
	adjust_window_size_when_changing_font_size = false,
	warn_about_missing_glyphs = false,
	front_end = "WebGpu",
}

return config
