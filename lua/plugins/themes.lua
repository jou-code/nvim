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
{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {"nyoom-engineering/oxocarbon.nvim"
  -- Add in any other configuration; 
  --   event = foo, 
  --   config = bar
  --   end,
},
}
