return {
  {'zaldih/themery.nvim',
    config = function()
      -- Minimal config
require("themery").setup({
  themes = {"tokyonight-moon", 'tokyonight-night', 'tokyonight-storm',"onedark"}, -- Your list of installed colorschemes
  -- themeConfigFile = "~/.config/nvim/lua/theme.lua", -- Described below
  themeConfigFile = "~/.config/momovim/lua/colors.lua", -- Described below
  livePreview = true, -- Apply theme while browsing. Default to true.
})
    end
  },
vim.keymap.set('n', '<leader>0', ':Themery<CR>', { desc = 'Theme Selection', silent = true }),
vim.keymap.set('n', '<F5>', ':Themery<CR>', { desc = 'Theme Selection', silent = true })
}
--
-- vim.cmd.colorscheme 'tokyonight'
-- vim.cmd.colorscheme 'tokyonight-night'
-- vim.cmd.colorscheme 'tokyonight-storm'
-- vim.cmd.colorscheme 'onedark'
-- vim.cmd.colorscheme 'tokyonight-moon'
