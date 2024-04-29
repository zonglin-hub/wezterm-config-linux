local wezterm = require "wezterm"
local config = {}

-- 配置默认程序
config.default_prog = { '/home/zonglin/.cargo/bin/nu', '-l' }

-- 配置启动器菜单
-- config.launch_menu = {
-- 	{ label = 'Bash',    args = { 'bash', '-l' } },
-- 	{ label = 'Nushell', args = { 'nu', '-l' } },
-- 	-- ssh demo
-- 	-- { label = 'Ubuntu',  args = { 'ssh', 'zonglin@172.20.115.202', '-p', '22' } },
-- }

-- -- 配置字体大小
-- local platform = require('utils.platform')
-- config.font_size = platform().is_mac and 14 or 15
-- config.font = wezterm.font('Cascadia Code')

-- keys
-- config.keys = {
-- 	{ key = "`",   mods = "LEADER|CTRL",  action = wezterm.action { SendString = "`" } },

-- 	-- 复制 Ctrl+C
-- 	{ key = "v",   mods = "CTRL",         action = wezterm.action { PasteFrom = "Clipboard" } },

-- 	-- 粘贴 Ctrl+V
-- 	{ key = "w",   mods = "ALT",          action = wezterm.action({ CopyTo = "Clipboard" }) },

-- 	{ key = "-",   mods = "LEADER",       action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },
-- 	{ key = "\\",  mods = "LEADER",       action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
-- 	{ key = "c",   mods = "LEADER",       action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
-- 	{ key = "h",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Left" } },
-- 	{ key = "j",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Up" } },
-- 	{ key = "k",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Down" } },
-- 	{ key = "l",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Right" } },
-- 	{ key = ",",   mods = "LEADER",       action = "ShowLauncher" },
-- 	{ key = "b",   mods = "LEADER",       action = "ShowTabNavigator" },
-- 	{ key = "f",   mods = "LEADER",       action = "QuickSelect" },
-- 	{ key = "\t",  mods = "LEADER",       action = "ActivateLastTab" },
-- 	{ key = "1",   mods = "LEADER",       action = wezterm.action { ActivateTab = 0 } },
-- 	{ key = "2",   mods = "LEADER",       action = wezterm.action { ActivateTab = 1 } },
-- 	{ key = "3",   mods = "LEADER",       action = wezterm.action { ActivateTab = 2 } },
-- 	{ key = "4",   mods = "LEADER",       action = wezterm.action { ActivateTab = 3 } },
-- 	{ key = "5",   mods = "LEADER",       action = wezterm.action { ActivateTab = 4 } },
-- 	{ key = "6",   mods = "LEADER",       action = wezterm.action { ActivateTab = 5 } },
-- 	{ key = "7",   mods = "LEADER",       action = wezterm.action { ActivateTab = 6 } },
-- 	{ key = "8",   mods = "LEADER",       action = wezterm.action { ActivateTab = 7 } },
-- 	{ key = "9",   mods = "LEADER",       action = wezterm.action { ActivateTab = 8 } },
-- 	{ key = "n",   mods = "LEADER",       action = wezterm.action { ActivateTabRelative = 1 } },
-- 	{ key = "p",   mods = "LEADER",       action = wezterm.action { ActivateTabRelative = -1 } },
-- 	{ key = "&",   mods = "LEADER|SHIFT", action = wezterm.action { CloseCurrentTab = { confirm = true } } },
-- 	{ key = "x",   mods = "LEADER",       action = wezterm.action { CloseCurrentPane = { confirm = true } } },
-- 	{ key = "y",   mods = "CTRL",         action = wezterm.action({ PasteFrom = "Clipboard" }) },
-- 	{ key = "Tab", mods = "LEADER",       action = wezterm.action({ ActivateTabRelative = 1 }) },

-- 	-- panes --
-- 	-- panes: split panes
-- 	-- https://wezfurlong.org/wezterm/config/lua/keyassignment/SplitVertical.html?h=split+vertical
-- 	{ key = [[\]], mods = 'CTRL|ALT',     action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },

-- 	-- { key = [[\]],   mods = mod.SUPER_REV,  action = act.SplitVertical({ domain = 'CurrentPaneDomain' }) },

-- 	-- -- panes: zoom+close pane
-- 	-- { key = 'Enter', mods = mod.SUPER,      action = act.TogglePaneZoomState },
-- 	-- { key = 'w',     mods = mod.SUPER,      action = act.CloseCurrentPane({ confirm = false }) },

-- 	-- -- panes: navigation
-- 	-- { key = 'k',     mods = mod.SUPER_REV,  action = act.ActivatePaneDirection('Up') },
-- 	-- { key = 'j',     mods = mod.SUPER_REV,  action = act.ActivatePaneDirection('Down') },
-- 	-- { key = 'h',     mods = mod.SUPER_REV,  action = act.ActivatePaneDirection('Left') },
-- 	-- { key = 'l',     mods = mod.SUPER_REV,  action = act.ActivatePaneDirection('Right') },
-- 	-- { key = 'p',     mods = mod.SUPER_REV,  action = act.PaneSelect({ alphabet = '1234567890', mode = 'SwapWithActiveKeepFocus' }) },
-- }

-- 左上角 logo
-- wezterm.on(
-- 	"format-tab-title",
-- 	function(tab, tabs, panes, config, hover, max_width)
-- 		local function basename(s) return string.gsub(s, "(.*[/\\])(.*)", "%2") end
-- 		local process_name = tab.active_pane.foreground_process_name
-- 		local exec_name = basename(process_name):gsub("%$", "")
-- 		local title_with_icon
-- 		local pane_title = tab.active_pane.title

-- 		if exec_name == "nu" then
-- 			local NU_ICON = utf8.char(0xe7a8)
-- 			title_with_icon = NU_ICON .. " NuShell"
-- 		elseif exec_name == "pwsh" then
-- 			local PS_ICON = utf8.char(0xe70f)
-- 			title_with_icon = PS_ICON .. " PS"
-- 		elseif exec_name == "cmd" then
-- 			local CMD_ICON = utf8.char(0xe62a)
-- 			title_with_icon = CMD_ICON .. " CMD"
-- 		elseif exec_name == "elvish" then
-- 			local ELV_ICON = utf8.char(0xfc6f)
-- 			title_with_icon = ELV_ICON .. " Elvish"
-- 		elseif exec_name == "wsl" or exec_name == "wslhost" then
-- 			local WSL_ICON = utf8.char(0xf83c)
-- 			title_with_icon = WSL_ICON .. " WSL"
-- 		elseif exec_name == "nyagos" then
-- 			local NYA_ICON = utf8.char(0xf61a)
-- 			title_with_icon = NYA_ICON .. " " .. pane_title:gsub(".*: (.+) %- .+", "%1")
-- 		elseif exec_name == "yori" then
-- 			local YORI_ICON = utf8.char(0xf1d4)
-- 			title_with_icon = YORI_ICON .. " " .. pane_title:gsub(" %- Yori", "")
-- 		elseif exec_name == "nvim" then
-- 			local VIM_ICON = utf8.char(0xe62b)
-- 			title_with_icon = VIM_ICON .. pane_title:gsub("^(%S+)%s+(%d+/%d+) %- nvim", " %2 %1")
-- 		elseif exec_name == "bat" or exec_name == "less" or exec_name == "moar" then
-- 			local PAGER_ICON = utf8.char(0xf718)
-- 			title_with_icon = PAGER_ICON .. " " .. exec_name:upper()
-- 		elseif exec_name == "fzf" or exec_name == "hs" or exec_name == "peco" then
-- 			local FUZZY_ICON = utf8.char(0xf0b0)
-- 			title_with_icon = FUZZY_ICON .. " " .. exec_name:upper()
-- 		elseif exec_name == "btm" or exec_name == "ntop" then
-- 			local SUNGLASS_ICON = utf8.char(0xf9df)
-- 			title_with_icon = SUNGLASS_ICON .. " " .. exec_name:upper()
-- 		elseif exec_name == "python" or exec_name == "hiss" then
-- 			local PYTHON_ICON = utf8.char(0xf820)
-- 			title_with_icon = PYTHON_ICON .. " " .. exec_name
-- 		elseif exec_name == "node" then
-- 			local NODE_ICON = utf8.char(0xe74e)
-- 			title_with_icon = NODE_ICON .. " " .. exec_name:upper()
-- 		elseif exec_name == "deno" then
-- 			local DENO_ICON = utf8.char(0xe628)
-- 			title_with_icon = DENO_ICON .. " " .. exec_name:upper()
-- 		elseif exec_name == "bb" or exec_name == "cmd-clj" or exec_name == "janet" or exec_name == "hy" then
-- 			local LAMBDA_ICON = utf8.char(0xfb26)
-- 			title_with_icon = LAMBDA_ICON .. " " .. exec_name:gsub("bb", "Babashka"):gsub("cmd%-clj", "Clojure")
-- 		else
-- 			local HOURGLASS_ICON = utf8.char(0xf252)
-- 			title_with_icon = HOURGLASS_ICON .. " " .. exec_name
-- 		end

-- 		if pane_title:match("^Administrator: ") then
-- 			local ADMIN_ICON = utf8.char(0xf49c)
-- 			title_with_icon = title_with_icon .. " " .. ADMIN_ICON
-- 		end

-- 		local SOLID_LEFT_ARROW = utf8.char(0xe0ba)
-- 		local left_arrow = SOLID_LEFT_ARROW

-- 		if tab.tab_index == 0 then
-- 			local SOLID_LEFT_MOST = utf8.char(0x2588)
-- 			left_arrow = SOLID_LEFT_MOST
-- 		end

-- 		local SUP_IDX = { "¹", "²", "³", "⁴", "⁵", "⁶", "⁷", "⁸", "⁹", "¹⁰",
-- 			"¹¹", "¹²", "¹³", "¹⁴", "¹⁵", "¹⁶", "¹⁷", "¹⁸", "¹⁹", "²⁰" }
-- 		local SUB_IDX = { "₁", "₂", "₃", "₄", "₅", "₆", "₇", "₈", "₉", "₁₀",
-- 			"₁₁", "₁₂", "₁₃", "₁₄", "₁₅", "₁₆", "₁₇", "₁₈", "₁₉", "₂₀" }

-- 		local id = SUB_IDX[tab.tab_index + 1]
-- 		local pid = SUP_IDX[tab.active_pane.pane_index + 1]

-- 		local title = " " .. wezterm.truncate_right(title_with_icon, max_width - 6) .. " "
-- 		local edge_background = "#121212"

-- 		local SOLID_RIGHT_ARROW = utf8.char(0xe0bc)
-- 		local dim_foreground = "#3A3A3A"
-- 		local background = "#4E4E4E"
-- 		local foreground = "#1C1B19"


-- 		if tab.is_active then
-- 			background = "#FBB829"
-- 			foreground = "#1C1B19"
-- 		elseif hover then
-- 			background = "#FF8700"
-- 			foreground = "#1C1B19"
-- 		end

-- 		local edge_foreground = background

-- 		return {
-- 			{ Attribute = { Intensity = "Bold" } },
-- 			{ Background = { Color = edge_background } },
-- 			{ Foreground = { Color = edge_foreground } },
-- 			{ Text = left_arrow },
-- 			{ Background = { Color = background } },
-- 			{ Foreground = { Color = foreground } },
-- 			{ Text = id },
-- 			{ Text = title },
-- 			{ Foreground = { Color = dim_foreground } },
-- 			{ Text = pid },
-- 			{ Background = { Color = edge_background } },
-- 			{ Foreground = { Color = edge_foreground } },
-- 			{ Text = SOLID_RIGHT_ARROW },
-- 			{ Attribute = { Intensity = "Normal" } },
-- 		}
-- 	end
-- )

-- 鼠标捆绑
config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = wezterm.action { PasteFrom = "Clipboard" }
	},
	-- Change the default click behavior so that it only selects
	-- text and doesn't open hyperlinks
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = wezterm.action { CompleteSelection = "PrimarySelection" }
	},
	-- and make CTRL-Click open hyperlinks
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = "OpenLinkAtMouseCursor"
	}

}

-- init  right-status.lua config
require('events.right-status').setup()
require('events.tab-title').setup()
require('events.new-tab-button').setup()
require('utils.backdrops'):set_files():random()

-- return config


local _Config_ = require('config.init')

return _Config_:init()
	:append(require('config.appearance'))
	:append(require('config.fonts'))
	:append(require('config.bindings'))
	:append(require('config.general'))
	:append(require('config.launch')).options
