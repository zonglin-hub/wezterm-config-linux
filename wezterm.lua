-- local function basename(s)
-- 	return string.gsub(s, "(.*[/\\])(.*)", "%2")
-- end

local wezterm = require "wezterm"
local config = {}

-- 配置颜色和外观
config.colors = {
	-- The default text color
	foreground = 'silver',
	-- The default background color
	background = 'black',

	-- Overrides the cell background color when the current cell is occupied by the
	-- cursor and the cursor style is set to Block
	cursor_bg = '#52ad70',
	-- Overrides the text color when the current cell is occupied by the cursor
	cursor_fg = 'black',
	-- Specifies the border color of the cursor when the cursor style is set to Block,
	-- or the color of the vertical or horizontal bar when the cursor style is set to
	-- Bar or Underline.
	cursor_border = '#52ad70',

	-- the foreground color of selected text
	selection_fg = 'black',
	-- the background color of selected text
	selection_bg = '#fffacd',

	-- The color of the scrollbar "thumb"; the portion that represents the current viewport
	scrollbar_thumb = '#222222',

	-- The color of the split lines between panes
	split = '#444444',

	ansi = {
		'black',
		'maroon',
		'green',
		'olive',
		'navy',
		'purple',
		'teal',
		'silver',
	},
	brights = {
		'grey',
		'red',
		'lime',
		'yellow',
		'blue',
		'fuchsia',
		'aqua',
		'white',
	},

	-- Arbitrary colors of the palette in the range from 16 to 255
	indexed = { [136] = '#af8700' },

	-- Since: 20220319-142410-0fcdea07
	-- When the IME, a dead key or a leader key are being processed and are effectively
	-- holding input pending the result of input composition, change the cursor
	-- to this color to give a visual cue about the compose state.
	compose_cursor = 'orange',

	-- Colors for copy_mode and quick_select
	-- available since: 20220807-113146-c2fee766
	-- In copy_mode, the color of the active text is:
	-- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
	-- 2. selection_* otherwise
	copy_mode_active_highlight_bg = { Color = '#000000' },
	-- use `AnsiColor` to specify one of the ansi color palette values
	-- (index 0-15) using one of the names "Black", "Maroon", "Green",
	--  "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime",
	-- "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
	copy_mode_active_highlight_fg = { AnsiColor = 'Black' },
	copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
	copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },

	quick_select_label_bg = { Color = 'peru' },
	quick_select_label_fg = { Color = '#ffffff' },
	quick_select_match_bg = { AnsiColor = 'Navy' },
	quick_select_match_fg = { Color = '#ffffff' },
}

config.default_prog = { '/home/zonglin/.cargo/bin/nu', '-l' }

return config

-- local SOLID_LEFT_ARROW = utf8.char(0xe0ba)
-- local SOLID_LEFT_MOST = utf8.char(0x2588)
-- local SOLID_RIGHT_ARROW = utf8.char(0xe0bc)

-- local ADMIN_ICON = utf8.char(0xf49c)

-- local CMD_ICON = utf8.char(0xe62a)
-- local NU_ICON = utf8.char(0xe7a8)
-- local PS_ICON = utf8.char(0xe70f)
-- local ELV_ICON = utf8.char(0xfc6f)
-- local WSL_ICON = utf8.char(0xf83c)
-- local YORI_ICON = utf8.char(0xf1d4)
-- local NYA_ICON = utf8.char(0xf61a)

-- local VIM_ICON = utf8.char(0xe62b)
-- local PAGER_ICON = utf8.char(0xf718)
-- local FUZZY_ICON = utf8.char(0xf0b0)
-- local HOURGLASS_ICON = utf8.char(0xf252)
-- local SUNGLASS_ICON = utf8.char(0xf9df)

-- local PYTHON_ICON = utf8.char(0xf820)
-- local NODE_ICON = utf8.char(0xe74e)
-- local DENO_ICON = utf8.char(0xe628)
-- local LAMBDA_ICON = utf8.char(0xfb26)

-- local SUP_IDX = { "¹", "²", "³", "⁴", "⁵", "⁶", "⁷", "⁸", "⁹", "¹⁰",
-- 	"¹¹", "¹²", "¹³", "¹⁴", "¹⁵", "¹⁶", "¹⁷", "¹⁸", "¹⁹", "²⁰" }
-- local SUB_IDX = { "₁", "₂", "₃", "₄", "₅", "₆", "₇", "₈", "₉", "₁₀",
-- 	"₁₁", "₁₂", "₁₃", "₁₄", "₁₅", "₁₆", "₁₇", "₁₈", "₁₉", "₂₀" }

-- local launch_menu = {}

-- local ssh_cmd = { "ssh" }
-- if wezterm.target_triple == "x86_64-pc-windows-msvc" then
-- 	ssh_cmd = { "powershell.exe", "ssh" }

-- 	table.insert(
-- 		launch_menu,
-- 		{
-- 			label = "PowerShell Core",
-- 			args = { "pwsh.exe", "-NoLogo" }
-- 		}
-- 	)

-- 	table.insert(
-- 		launch_menu,
-- 		{
-- 			label = "NyaGOS",
-- 			args = { "nyagos.exe", "--glob" },
-- 		}

-- 	)
-- end

-- local ssh_config_file = wezterm.home_dir .. "/.ssh/config"
-- local f = io.open(ssh_config_file)
-- if f then
-- 	local line = f:read("*l")
-- 	while line do
-- 		if line:find("Host ") == 1 then
-- 			local host = line:gsub("Host ", "")
-- 			table.insert(
-- 				launch_menu,
-- 				{
-- 					label = "SSH " .. host,
-- 					args = { "ssh", host }
-- 				}
-- 			)
-- 		end
-- 		line = f:read("*l")
-- 	end
-- 	f:close()
-- end

-- local mouse_bindings = {
-- 	{
-- 		event = { Down = { streak = 1, button = "Right" } },
-- 		mods = "NONE",
-- 		action = wezterm.action { PasteFrom = "Clipboard" }
-- 	},
-- 	-- Change the default click behavior so that it only selects
-- 	-- text and doesn't open hyperlinks
-- 	{
-- 		event = { Up = { streak = 1, button = "Left" } },
-- 		mods = "NONE",
-- 		action = wezterm.action { CompleteSelection = "PrimarySelection" }
-- 	},
-- 	-- and make CTRL-Click open hyperlinks
-- 	{
-- 		event = { Up = { streak = 1, button = "Left" } },
-- 		mods = "CTRL",
-- 		action = "OpenLinkAtMouseCursor"
-- 	}

-- }



-- wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
-- 	local edge_background = "#121212"
-- 	local background = "#4E4E4E"
-- 	local foreground = "#1C1B19"
-- 	local dim_foreground = "#3A3A3A"

-- 	if tab.is_active then
-- 		background = "#FBB829"
-- 		foreground = "#1C1B19"
-- 	elseif hover then
-- 		background = "#FF8700"
-- 		foreground = "#1C1B19"
-- 	end

-- 	local edge_foreground = background
-- 	local process_name = tab.active_pane.foreground_process_name
-- 	local pane_title = tab.active_pane.title
-- 	local exec_name = basename(process_name):gsub("%.exe$", "")
-- 	local title_with_icon

-- 	if exec_name == "nu" then
-- 		title_with_icon = NU_ICON .. " NuShell"
-- 	elseif exec_name == "pwsh" then
-- 		title_with_icon = PS_ICON .. " PS"
-- 	elseif exec_name == "cmd" then
-- 		title_with_icon = CMD_ICON .. " CMD"
-- 	elseif exec_name == "elvish" then
-- 		title_with_icon = ELV_ICON .. " Elvish"
-- 	elseif exec_name == "wsl" or exec_name == "wslhost" then
-- 		title_with_icon = WSL_ICON .. " WSL"
-- 	elseif exec_name == "nyagos" then
-- 		title_with_icon = NYA_ICON .. " " .. pane_title:gsub(".*: (.+) %- .+", "%1")
-- 	elseif exec_name == "yori" then
-- 		title_with_icon = YORI_ICON .. " " .. pane_title:gsub(" %- Yori", "")
-- 	elseif exec_name == "nvim" then
-- 		title_with_icon = VIM_ICON .. pane_title:gsub("^(%S+)%s+(%d+/%d+) %- nvim", " %2 %1")
-- 	elseif exec_name == "bat" or exec_name == "less" or exec_name == "moar" then
-- 		title_with_icon = PAGER_ICON .. " " .. exec_name:upper()
-- 	elseif exec_name == "fzf" or exec_name == "hs" or exec_name == "peco" then
-- 		title_with_icon = FUZZY_ICON .. " " .. exec_name:upper()
-- 	elseif exec_name == "btm" or exec_name == "ntop" then
-- 		title_with_icon = SUNGLASS_ICON .. " " .. exec_name:upper()
-- 	elseif exec_name == "python" or exec_name == "hiss" then
-- 		title_with_icon = PYTHON_ICON .. " " .. exec_name
-- 	elseif exec_name == "node" then
-- 		title_with_icon = NODE_ICON .. " " .. exec_name:upper()
-- 	elseif exec_name == "deno" then
-- 		title_with_icon = DENO_ICON .. " " .. exec_name:upper()
-- 	elseif exec_name == "bb" or exec_name == "cmd-clj" or exec_name == "janet" or exec_name == "hy" then
-- 		title_with_icon = LAMBDA_ICON .. " " .. exec_name:gsub("bb", "Babashka"):gsub("cmd%-clj", "Clojure")
-- 	else
-- 		title_with_icon = HOURGLASS_ICON .. " " .. exec_name
-- 	end
-- 	if pane_title:match("^Administrator: ") then
-- 		title_with_icon = title_with_icon .. " " .. ADMIN_ICON
-- 	end
-- 	local left_arrow = SOLID_LEFT_ARROW
-- 	if tab.tab_index == 0 then
-- 		left_arrow = SOLID_LEFT_MOST
-- 	end
-- 	local id = SUB_IDX[tab.tab_index + 1]
-- 	local pid = SUP_IDX[tab.active_pane.pane_index + 1]
-- 	local title = " " .. wezterm.truncate_right(title_with_icon, max_width - 6) .. " "

-- 	return {
-- 		{ Attribute = { Intensity = "Bold" } },
-- 		{ Background = { Color = edge_background } },
-- 		{ Foreground = { Color = edge_foreground } },
-- 		{ Text = left_arrow },
-- 		{ Background = { Color = background } },
-- 		{ Foreground = { Color = foreground } },
-- 		{ Text = id },
-- 		{ Text = title },
-- 		{ Foreground = { Color = dim_foreground } },
-- 		{ Text = pid },
-- 		{ Background = { Color = edge_background } },
-- 		{ Foreground = { Color = edge_foreground } },
-- 		{ Text = SOLID_RIGHT_ARROW },
-- 		{ Attribute = { Intensity = "Normal" } },
-- 	}
-- end)

-- -- wezterm.on(
-- -- 	"update-right-status",
-- -- 	function(window)
-- -- 		local date = wezterm.strftime("%Y-%m-%d %H:%M:%S ")
-- -- 		window:set_right_status(
-- -- 			wezterm.format(
-- -- 				{
-- -- 					{ Text = date }
-- -- 				}
-- -- 			)
-- -- 		)
-- -- 	end
-- -- )

-- -- local default_prog = { "pwsh.exe" }

-- return {
-- 	set_environment_variables = {
-- 		PATH = wezterm.executable_dir .. ";" .. os.getenv("PATH"),
-- 	},
-- 	window_frame = window_frame, -- needed only if using fancy tab
-- 	window_background_opacity = 0.8,
-- 	launch_menu = launch_menu,
-- 	mouse_bindings = mouse_bindings,
-- 	disable_default_key_bindings = true,
-- 	-- default_prog = default_prog,
-- 	-- font = wezterm.font("Fira Code"),
-- 	-- colors = {
-- 	-- 	tab_bar = {
-- 	-- 		background = TAB_BAR_BG,
-- 	-- 	},
-- 	-- },
-- 	text_background_opacity = 0.95,

-- 	leader = { key = "x", mods = "CTRL" },
-- 	keys = {
-- 		{ key = "`",   mods = "LEADER|CTRL",  action = wezterm.action { SendString = "`" } },
-- 		{ key = "v",   mods = "CTRL",         action = wezterm.action { PasteFrom = "Clipboard" } },
-- 		{ key = "-",   mods = "LEADER",       action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },
-- 		{ key = "\\",  mods = "LEADER",       action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
-- 		{ key = "c",   mods = "LEADER",       action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
-- 		{ key = "h",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Left" } },
-- 		{ key = "j",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Up" } },
-- 		{ key = "k",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Down" } },
-- 		{ key = "l",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Right" } },
-- 		{ key = ",",   mods = "LEADER",       action = "ShowLauncher" },
-- 		{ key = "b",   mods = "LEADER",       action = "ShowTabNavigator" },
-- 		{ key = "f",   mods = "LEADER",       action = "QuickSelect" },
-- 		{ key = "\t",  mods = "LEADER",       action = "ActivateLastTab" },
-- 		{ key = "1",   mods = "LEADER",       action = wezterm.action { ActivateTab = 0 } },
-- 		{ key = "2",   mods = "LEADER",       action = wezterm.action { ActivateTab = 1 } },
-- 		{ key = "3",   mods = "LEADER",       action = wezterm.action { ActivateTab = 2 } },
-- 		{ key = "4",   mods = "LEADER",       action = wezterm.action { ActivateTab = 3 } },
-- 		{ key = "5",   mods = "LEADER",       action = wezterm.action { ActivateTab = 4 } },
-- 		{ key = "6",   mods = "LEADER",       action = wezterm.action { ActivateTab = 5 } },
-- 		{ key = "7",   mods = "LEADER",       action = wezterm.action { ActivateTab = 6 } },
-- 		{ key = "8",   mods = "LEADER",       action = wezterm.action { ActivateTab = 7 } },
-- 		{ key = "9",   mods = "LEADER",       action = wezterm.action { ActivateTab = 8 } },
-- 		-- { key = "l", mods = "LEADER",       action=wezterm.action{EmitEvent="toggle-ligature"}},
-- 		{ key = "n",   mods = "LEADER",       action = wezterm.action { ActivateTabRelative = 1 } },
-- 		{ key = "p",   mods = "LEADER",       action = wezterm.action { ActivateTabRelative = -1 } },
-- 		{ key = "&",   mods = "LEADER|SHIFT", action = wezterm.action { CloseCurrentTab = { confirm = true } } },
-- 		{ key = "x",   mods = "LEADER",       action = wezterm.action { CloseCurrentPane = { confirm = true } } },
-- 		{ key = "w",   mods = "ALT",          action = wezterm.action({ CopyTo = "Clipboard" }) },
-- 		{ key = "y",   mods = "CTRL",         action = wezterm.action({ PasteFrom = "Clipboard" }) },
-- 		{ key = "Tab", mods = "LEADER",       action = wezterm.action({ ActivateTabRelative = 1 }) },
-- 	},

-- }
