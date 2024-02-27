return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  config = function()
    require('which-key').setup {
      layout = {
        align = 'center',
      },
    }
    require('which-key').register {
      -- ['<leader>q'] = 'which_key_ignore',
    }
  end,
}
