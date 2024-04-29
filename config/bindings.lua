-- -- 快捷键设置 --

-- local wezterm = require('wezterm')

-- local keys = {
--    { key = "`",   mods = "LEADER|CTRL",  action = wezterm.action { SendString = "`" } },

--    -- 复制 Ctrl+V
--    { key = "v",   mods = "CTRL",         action = wezterm.action { PasteFrom = "Clipboard" } },

--    -- 粘贴 Ctrl+C
--    { key = "c",   mods = "ALT",          action = wezterm.action({ CopyTo = "Clipboard" }) },

--    { key = "-",   mods = "LEADER",       action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },
--    { key = "\\",  mods = "LEADER",       action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
--    { key = "c",   mods = "LEADER",       action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
--    { key = "h",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Left" } },
--    { key = "j",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Up" } },
--    { key = "k",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Down" } },
--    { key = "l",   mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Right" } },
--    { key = ",",   mods = "LEADER",       action = "ShowLauncher" },
--    { key = "b",   mods = "LEADER",       action = "ShowTabNavigator" },
--    { key = "f",   mods = "LEADER",       action = "QuickSelect" },
--    { key = "\t",  mods = "LEADER",       action = "ActivateLastTab" },
--    { key = "1",   mods = "LEADER",       action = wezterm.action { ActivateTab = 0 } },
--    { key = "2",   mods = "LEADER",       action = wezterm.action { ActivateTab = 1 } },
--    { key = "3",   mods = "LEADER",       action = wezterm.action { ActivateTab = 2 } },
--    { key = "4",   mods = "LEADER",       action = wezterm.action { ActivateTab = 3 } },
--    { key = "5",   mods = "LEADER",       action = wezterm.action { ActivateTab = 4 } },
--    { key = "6",   mods = "LEADER",       action = wezterm.action { ActivateTab = 5 } },
--    { key = "7",   mods = "LEADER",       action = wezterm.action { ActivateTab = 6 } },
--    { key = "8",   mods = "LEADER",       action = wezterm.action { ActivateTab = 7 } },
--    { key = "9",   mods = "LEADER",       action = wezterm.action { ActivateTab = 8 } },
--    { key = "n",   mods = "LEADER",       action = wezterm.action { ActivateTabRelative = 1 } },
--    { key = "p",   mods = "LEADER",       action = wezterm.action { ActivateTabRelative = -1 } },
--    { key = "&",   mods = "LEADER|SHIFT", action = wezterm.action { CloseCurrentTab = { confirm = true } } },
--    { key = "x",   mods = "LEADER",       action = wezterm.action { CloseCurrentPane = { confirm = true } } },
--    { key = "y",   mods = "CTRL",         action = wezterm.action({ PasteFrom = "Clipboard" }) },
--    { key = "Tab", mods = "LEADER",       action = wezterm.action({ ActivateTabRelative = 1 }) },

--    -- panes --
--    -- panes: split panes
--    -- https://wezfurlong.org/wezterm/config/lua/keyassignment/SplitVertical.html?h=split+vertical
--    { key = [[\]], mods = 'CTRL|ALT',     action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },

--    -- { key = [[\]],   mods = mod.SUPER_REV,  action = act.SplitVertical({ domain = 'CurrentPaneDomain' }) },

--    -- -- panes: zoom+close pane
--    -- { key = 'Enter', mods = mod.SUPER,      action = act.TogglePaneZoomState },
--    -- { key = 'w',     mods = mod.SUPER,      action = act.CloseCurrentPane({ confirm = false }) },

--    -- -- panes: navigation
--    -- { key = 'k',     mods = mod.SUPER_REV,  action = act.ActivatePaneDirection('Up') },
--    -- { key = 'j',     mods = mod.SUPER_REV,  action = act.ActivatePaneDirection('Down') },
--    -- { key = 'h',     mods = mod.SUPER_REV,  action = act.ActivatePaneDirection('Left') },
--    -- { key = 'l',     mods = mod.SUPER_REV,  action = act.ActivatePaneDirection('Right') },
--    -- { key = 'p',     mods = mod.SUPER_REV,  action = act.PaneSelect({ alphabet = '1234567890', mode = 'SwapWithActiveKeepFocus' }) },
-- }

-- local act = wezterm.action

-- -- 鼠标捆绑
-- local mouse_bindings = {
--    -- Ctrl-click will open the link under the mouse cursor
--    { event = { Up = { streak = 1, button = 'Left' } },    mods = 'CTRL', action = act.OpenLinkAtMouseCursor, },
--    { event = { Down = { streak = 1, button = "Right" } }, mods = "NONE", action = wezterm.action { PasteFrom = "Clipboard" } },
--    -- Change the default click behavior so that it only selects
--    -- text and doesn't open hyperlinks
--    { event = { Up = { streak = 1, button = "Left" } },    mods = "NONE", action = wezterm.action { CompleteSelection = "PrimarySelection" } },
-- }

-- return {
--    keys = keys,
--    mouse_bindings = mouse_bindings,
-- }


-- 快捷键设置 --

local wezterm = require('wezterm')
local platform = require('utils.platform')()
local backdrops = require('utils.backdrops')
local act = wezterm.action

local mod = {}

if platform.is_mac then
   mod.SUPER = 'SUPER'
   mod.SUPER_REV = 'SUPER|CTRL'
elseif platform.is_win then
   mod.SUPER = 'ALT' -- to not conflict with Windows key shortcuts
   mod.SUPER_REV = 'ALT|CTRL'
elseif platform.is_linux then
   mod.SUPER = 'ALT' -- to not conflict with Windows key shortcuts
   mod.SUPER_REV = 'ALT|CTRL'
end

local keys = {
   -- misc/useful --
   { key = 'F1',  mods = 'NONE',    action = 'ActivateCopyMode' },
   { key = 'F2',  mods = 'NONE',    action = act.ActivateCommandPalette },
   { key = 'F3',  mods = 'NONE',    action = act.ShowLauncher },
   { key = 'F4',  mods = 'NONE',    action = act.ShowLauncherArgs({ flags = 'FUZZY|TABS' }) },
   { key = 'F5',  mods = 'NONE',    action = act.ShowLauncherArgs({ flags = 'FUZZY|WORKSPACES' }) },

   -- F11 切换全屏 --
   { key = 'F11', mods = 'NONE',    action = act.ToggleFullScreen },
   { key = 'F12', mods = 'NONE',    action = act.ShowDebugOverlay },
   { key = 'f',   mods = mod.SUPER, action = act.Search({ CaseInSensitiveString = '' }) },
   {
      key = 'u',
      mods = mod.SUPER,
      action = wezterm.action.QuickSelectArgs({
         label = 'open url',
         patterns = { 'https?://\\S+', },
         action = wezterm.action_callback(
            function(window, pane)
               local url = window:get_selection_text_for_pane(pane)
               wezterm.log_info('opening: ' .. url)
               wezterm.open_with(url)
            end
         ),
      }),
   },

   -- 复制 Ctrl+C
   { key = 'c', mods = 'CTRL',        action = act.CopyTo('Clipboard') },

   -- 粘贴 Ctrl+V
   { key = 'v', mods = 'CTRL',        action = act.PasteFrom('Clipboard') },

   -- tabs --
   -- tabs: spawn+close
   { key = 't', mods = mod.SUPER,     action = act.SpawnTab('DefaultDomain') },
   { key = 't', mods = mod.SUPER_REV, action = act.SpawnTab({ DomainName = 'WSL:Ubuntu' }) },
   { key = 'w', mods = mod.SUPER_REV, action = act.CloseCurrentTab({ confirm = false }) },

   -- tabs: navigation
   { key = '[', mods = mod.SUPER,     action = act.ActivateTabRelative(-1) },
   { key = ']', mods = mod.SUPER,     action = act.ActivateTabRelative(1) },
   { key = '[', mods = mod.SUPER_REV, action = act.MoveTabRelative(-1) },
   { key = ']', mods = mod.SUPER_REV, action = act.MoveTabRelative(1) },

   -- window --
   -- spawn windows
   { key = 'n', mods = mod.SUPER,     action = act.SpawnWindow },

   -- background controls --
   {
      key = [[/]],
      mods = mod.SUPER,
      action = wezterm.action_callback(
         function(window, _pane)
            backdrops:random(window)
         end
      ),
   },
   {
      key = [[,]],
      mods = mod.SUPER,
      action = wezterm.action_callback(
         function(window, _pane)
            backdrops:cycle_back(window)
         end
      ),
   },
   {
      key = [[.]],
      mods = mod.SUPER,
      action = wezterm.action_callback(
         function(window, _pane)
            backdrops:cycle_forward(window)
         end
      ),
   },
   {
      key = [[/]],
      mods = mod.SUPER_REV,
      action = act.InputSelector({
         title = 'Select Background',
         choices = backdrops:choices(),
         fuzzy = true,
         fuzzy_description = 'Select Background: ',
         action = wezterm.action_callback(
            function(window, _pane, idx)
               ---@diagnostic disable-next-line: param-type-mismatch
               backdrops:set_img(window, tonumber(idx))
            end
         ),
      }),
   },

   -- 窗格 --
   -- 分割窗格
   { key = [[\]],   mods = mod.SUPER,     action = act.SplitVertical({ domain = 'CurrentPaneDomain' }) },
   { key = [[\]],   mods = mod.SUPER_REV, action = act.SplitHorizontal({ domain = 'CurrentPaneDomain' }) },
   -- 切换窗格缩放状态
   { key = 'Enter', mods = mod.SUPER,     action = act.TogglePaneZoomState },
   -- 关闭当前窗格
   { key = 'w',     mods = mod.SUPER,     action = act.CloseCurrentPane({ confirm = false }) },
   -- 窗格: 导航
   { key = 'k',     mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Up') },
   { key = 'j',     mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Down') },
   { key = 'h',     mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Left') },
   { key = 'l',     mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Right') },
   { key = 'p',     mods = mod.SUPER_REV, action = act.PaneSelect({ alphabet = '1234567890', mode = 'SwapWithActiveKeepFocus' }) },
   -- 调整字体大小
   { key = 'f',     mods = 'LEADER',      action = act.ActivateKeyTable({ name = 'resize_font', one_shot = false, timemout_miliseconds = 1000, }) },
   -- 调整窗格大小
   { key = 'p',     mods = 'LEADER',      action = act.ActivateKeyTable({ name = 'resize_pane', one_shot = false, timemout_miliseconds = 1000, }) },
}

local key_tables = {
   resize_font = {
      { key = 'k',      action = act.IncreaseFontSize },
      { key = 'j',      action = act.DecreaseFontSize },
      { key = 'r',      action = act.ResetFontSize },
      { key = 'Escape', action = 'PopKeyTable' },
      { key = 'q',      action = 'PopKeyTable' },
   },
   resize_pane = {
      { key = 'k',      action = act.AdjustPaneSize({ 'Up', 1 }) },
      { key = 'j',      action = act.AdjustPaneSize({ 'Down', 1 }) },
      { key = 'h',      action = act.AdjustPaneSize({ 'Left', 1 }) },
      { key = 'l',      action = act.AdjustPaneSize({ 'Right', 1 }) },
      { key = 'Escape', action = 'PopKeyTable' },
      { key = 'q',      action = 'PopKeyTable' },
   },
}

local mouse_bindings = {
   -- Ctrl + 鼠标单击，将打开鼠标光标下的链接
   { event = { Up = { streak = 1, button = 'Left' } }, mods = 'CTRL', action = act.OpenLinkAtMouseCursor },
}

return {
   disable_default_key_bindings = true,
   leader = { key = 'Space', mods = mod.SUPER_REV },
   keys = keys,
   key_tables = key_tables,
   mouse_bindings = mouse_bindings,
}
