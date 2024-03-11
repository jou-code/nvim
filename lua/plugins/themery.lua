return {
  {
    'zaldih/themery.nvim',
    config = function()
      -- Minimal config
      require('themery').setup {
        themes = {
          'tokyonight-moon',
          'tokyonight-night',
          'tokyonight-storm',
          'catppuccin-frappe',
          'catppuccin-macchiato',
          'catppuccin-mocha',
          'onedark',
          'oxocarbon',
          'dracula',
          'lunar',
        },
        -- themeConfigFile = "~/.config/nvim/lua/theme.lua", -- Described below
        themeConfigFile = '' .. vim.fn.stdpath 'config' .. '/lua/colors.lua',
        livePreview = true, -- Apply theme while browsing. Default to true.
      }
    end,
  },
  vim.keymap.set('n', '<leader>0', ':Themery<CR>', { desc = 'Theme Selection', silent = true }),
  vim.keymap.set('n', '<F5>', ':Themery<CR>', { desc = 'Theme Selection', silent = true }),
}
