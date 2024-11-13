return {
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      local transparent = false

      local bg = "#191e2f" -- Background color for Tokyo Night Moon style
      local bg_dark = "#151927" -- Darker background color for specific UI elements in Tokyo Night Moon
      local bg_highlight = "#2e3856" -- Highlighted area color in Tokyo Night Moon
      local bg_search = "#485380" -- Search area background color in Tokyo Night Moon
      local bg_visual = "#394468" -- Visual selection background color in Tokyo Night Moon
      local fg = "#a9b1d6" -- Foreground color in Tokyo Night Moon style
      local fg_dark = "#939ab7" -- Darker foreground color for specific UI parts in Tokyo Night Moon
      local fg_gutter = "#565f89" -- Gutter area color in Tokyo Night Moon
      local border = "#414868" -- Border color in Tokyo Night Moon

      require("tokyonight").setup({
        style = "moon", -- Set the style to'moon' to use Tokyo Night Moon style. This is a crucial step for applying the specific theme style.
        transparent = transparent,

        on_colors = function(colors)
          colors.bg = bg -- Assign the defined background color to the theme's bg property
          colors.bg_dark = bg_dark -- Assign the darker background color for relevant UI components
          colors.bg_float = bg_dark
          colors.bg_highlight = bg_highlight -- Configure the highlight color for the theme
          colors.bg_popup = bg_dark
          colors.bg_search = bg_search -- Set the search area background color for the theme
          colors.bg_sidebar = bg_dark
          colors.bg_statusline = bg_dark
          colors.bg_visual = bg_visual -- Set the visual selection background color for the theme
          colors.border = border -- Set the border color for the theme
          colors.fg = fg -- Assign the defined foreground color to the theme's fg property
          colors.fg_dark = fg_dark -- Set the darker foreground color for specific areas in the theme
          colors.fg_float = fg
          colors.fg_gutter = fg_gutter -- Set the gutter area foreground color for the theme
          colors.fg_sidebar = fg_dark
        end,
      })
      vim.cmd([[colorscheme tokyonight]]) -- Load the Tokyo Night Moon colorscheme. This is essential to apply the configured colors to the editor.
    end,
  },
}
