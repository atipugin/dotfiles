local wezterm = require("wezterm")

local function scheme_for_appearance(appearance)
  if appearance:find("Light") then
    return "Catppuccin Latte"
  end

  return "Catppuccin Mocha"
end

return {
  font = wezterm.font("JetBrainsMono Nerd Font"),
  font_size = 14.0,
  line_height = 1.1,
  color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  window_padding = {
    top = 0,
    left = 0,
    bottom = 0,
    right = 0,
  },
  keys = {
    {
      key = "d",
      mods = "CMD",
      action = wezterm.action.SplitHorizontal({
        domain = "CurrentPaneDomain",
      }),
    },
    {
      key = "d",
      mods = "CMD|SHIFT",
      action = wezterm.action.SplitVertical({
        domain = "CurrentPaneDomain",
      }),
    },
    {
      key = "w",
      mods = "CMD",
      action = wezterm.action.CloseCurrentPane({ confirm = false }),
    },
    {
      key = "Enter",
      mods = "CMD|SHIFT",
      action = wezterm.action.TogglePaneZoomState,
    },
    {
      key = "[",
      mods = "CMD",
      action = wezterm.action.ActivatePaneDirection("Prev"),
    },
    {
      key = "]",
      mods = "CMD",
      action = wezterm.action.ActivatePaneDirection("Next"),
    },
    {
      key = "k",
      mods = "CMD",
      action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
    },
  },
}
