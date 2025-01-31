local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.default_prog = { 'pwsh' }
config.color_scheme = 'Oxocarbon Dark (Gogh)'

-- config.window_decorations = "NONE";
config.hide_tab_bar_if_only_one_tab = true;

-- timeout_milliseconds defaults to 1000 and can be omitted
config.leader = { key = 'b', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
    {
        key = 'b',
        mods = 'LEADER|CTRL',
        action = wezterm.action.SendKey { key = 'b', mods = 'CTRL' },
    },
    {
        key = '"',
        mods = 'LEADER|SHIFT',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
        key = '%',
        mods = 'LEADER|SHIFT',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    { key = "c", mods = "LEADER", action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
    { key = "h", mods = "LEADER", action = wezterm.action { ActivatePaneDirection = "Left" } },
    { key = "j", mods = "LEADER", action = wezterm.action { ActivatePaneDirection = "Down" } },
    { key = "k", mods = "LEADER", action = wezterm.action { ActivatePaneDirection = "Up" } },
    { key = "l", mods = "LEADER", action = wezterm.action { ActivatePaneDirection = "Right" } },

    { key = "1", mods = "LEADER",    action = wezterm.action { ActivateTab = 0 } },
    { key = "2", mods = "LEADER",    action = wezterm.action { ActivateTab = 1 } },
    { key = "3", mods = "LEADER",    action = wezterm.action { ActivateTab = 2 } },
    { key = "4", mods = "LEADER",    action = wezterm.action { ActivateTab = 3 } },
    { key = "5", mods = "LEADER",    action = wezterm.action { ActivateTab = 4 } },
    { key = "6", mods = "LEADER",    action = wezterm.action { ActivateTab = 5 } },
    { key = "7", mods = "LEADER",    action = wezterm.action { ActivateTab = 6 } },
    { key = "8", mods = "LEADER",    action = wezterm.action { ActivateTab = 7 } },
    { key = "9", mods = "LEADER",    action = wezterm.action { ActivateTab = 8 } },

    { key = "w", mods = "CTRL",    action = wezterm.action.CloseCurrentPane { confirm = false }, },
};


return config
