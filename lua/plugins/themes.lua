return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      },
    },
  },
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      require('onedark').setup {
        style = 'dark', -- dark, darker, cool, deep, warm, warmer, light
        -- toggle_style_key = '<F9>',
        -- toggle_style_list = { 'dark', 'warm', 'light' }, -- List of styles to toggle between
      }
    end,
  },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  {
    'nyoom-engineering/oxocarbon.nvim',
    -- Add in any other configuration;
    --   event = foo,
    --   config = bar
    --   end,
  },
  -- add dracula
  {
    'Mofiqul/dracula.nvim',
    opts = {
      colors = {
        bg = '#282A36',
        fg = '#F8F8F2',
        selection = '#44475A',
        comment = '#6272A4',
        red = '#FF5555',
        orange = '#FFB86C',
        yellow = '#F1FA8C',
        green = '#50fa7b',
        purple = '#BD93F9',
        cyan = '#8BE9FD',
        pink = '#FF79C6',
        bright_red = '#FF6E6E',
        bright_green = '#69FF94',
        bright_yellow = '#FFFFA5',
        bright_blue = '#D6ACFF',
        bright_magenta = '#FF92DF',
        bright_cyan = '#A4FFFF',
        bright_white = '#FFFFFF',
        menu = '#21222C',
        visual = '#3E4452',
        gutter_fg = '#4B5263',
        nontext = '#3B4048',
        white = '#ABB2BF',
        black = '#191A21',
      },
    },
  },
}
