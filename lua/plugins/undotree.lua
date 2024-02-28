return {
  'jiaoshijie/undotree',
  dependencies = 'nvim-lua/plenary.nvim',
  config = true,
  opts = {
window = {
    winblend = 0,
  },
  },
  keys = { -- load the plugin only when using it's keybinding:
    { '<leader>u', "<cmd>lua require('undotree').toggle()<cr>", desc = 'Undo Tree', silent = true },
  },
}
