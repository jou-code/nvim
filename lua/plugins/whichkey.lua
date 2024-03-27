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
      ['<leader>l'] = 'which_key_ignore',
      ['<leader>h'] = 'which_key_ignore',
      ['<leader>k'] = 'which_key_ignore',
      ['<leader>j'] = 'which_key_ignore',
      ['<leader>w'] = 'which_key_ignore',
      ['<leader>q'] = 'which_key_ignore',
      ['<leader>'] = '<Space>',
    }
  end,
}
