-- 快捷键设置 --

local wezterm = require('wezterm')

local keys = {
   { key = "`",   mods = "LEADER|CTRL",  action = wezterm.action { SendString = "`" } },

   -- 复制 Ctrl+C
   { key = "v",   mods = "CTRL",         action = wezterm.action { PasteFrom = "Clipboard" } },

   -- 粘贴 Ctrl+V
   { key = "w",   mods = "ALT",          action = wezterm.action({ CopyTo = "Clipboard" }) },

   { key = "-",   mods = "LEADER",       action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },
   { key = "\\",  mods = "LEADER",       action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
   { key = "c",   mods = "LEADER",       action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
   { key = "h",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Left" } },
   { key = "j",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Up" } },
   { key = "k",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Down" } },
   { key = "l",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Right" } },
   { key = ",",   mods = "LEADER",       action = "ShowLauncher" },
   { key = "b",   mods = "LEADER",       action = "ShowTabNavigator" },
   { key = "f",   mods = "LEADER",       action = "QuickSelect" },
   { key = "\t",  mods = "LEADER",       action = "ActivateLastTab" },
   { key = "1",   mods = "LEADER",       action = wezterm.action { ActivateTab = 0 } },
   { key = "2",   mods = "LEADER",       action = wezterm.action { ActivateTab = 1 } },
   { key = "3",   mods = "LEADER",       action = wezterm.action { ActivateTab = 2 } },
   { key = "4",   mods = "LEADER",       action = wezterm.action { ActivateTab = 3 } },
   { key = "5",   mods = "LEADER",       action = wezterm.action { ActivateTab = 4 } },
   { key = "6",   mods = "LEADER",       action = wezterm.action { ActivateTab = 5 } },
   { key = "7",   mods = "LEADER",       action = wezterm.action { ActivateTab = 6 } },
   { key = "8",   mods = "LEADER",       action = wezterm.action { ActivateTab = 7 } },
   { key = "9",   mods = "LEADER",       action = wezterm.action { ActivateTab = 8 } },
   { key = "n",   mods = "LEADER",       action = wezterm.action { ActivateTabRelative = 1 } },
   { key = "p",   mods = "LEADER",       action = wezterm.action { ActivateTabRelative = -1 } },
   { key = "&",   mods = "LEADER|SHIFT", action = wezterm.action { CloseCurrentTab = { confirm = true } } },
   { key = "x",   mods = "LEADER",       action = wezterm.action { CloseCurrentPane = { confirm = true } } },
   { key = "y",   mods = "CTRL",         action = wezterm.action({ PasteFrom = "Clipboard" }) },
   { key = "Tab", mods = "LEADER",       action = wezterm.action({ ActivateTabRelative = 1 }) },

   -- panes --
   -- panes: split panes
   -- https://wezfurlong.org/wezterm/config/lua/keyassignment/SplitVertical.html?h=split+vertical
   { key = [[\]], mods = 'CTRL|ALT',     action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },

   -- { key = [[\]],   mods = mod.SUPER_REV,  action = act.SplitVertical({ domain = 'CurrentPaneDomain' }) },

   -- -- panes: zoom+close pane
   -- { key = 'Enter', mods = mod.SUPER,      action = act.TogglePaneZoomState },
   -- { key = 'w',     mods = mod.SUPER,      action = act.CloseCurrentPane({ confirm = false }) },

   -- -- panes: navigation
   -- { key = 'k',     mods = mod.SUPER_REV,  action = act.ActivatePaneDirection('Up') },
   -- { key = 'j',     mods = mod.SUPER_REV,  action = act.ActivatePaneDirection('Down') },
   -- { key = 'h',     mods = mod.SUPER_REV,  action = act.ActivatePaneDirection('Left') },
   -- { key = 'l',     mods = mod.SUPER_REV,  action = act.ActivatePaneDirection('Right') },
   -- { key = 'p',     mods = mod.SUPER_REV,  action = act.PaneSelect({ alphabet = '1234567890', mode = 'SwapWithActiveKeepFocus' }) },
}



return {
   keys = keys,
}
