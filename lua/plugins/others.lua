return {
  { 'tpope/vim-sleuth', event = { 'BufReadPost', 'BufNewFile' } },
  { 'numToStr/Comment.nvim', opts = {}, event = { 'BufReadPre', 'BufNewFile' } },
  {'42Paris/42header'},
  { 'farmergreg/vim-lastplace' },
  { 'folke/todo-comments.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false }, event = { 'BufReadPre', 'BufNewFile' } },
  {
    'PedroDrago/c_formatter_42.vim',
    event = { 'BufReadPre', 'BufNewFile' },
    vim.api.nvim_create_user_command('Norm', ':CFormatter42', {}),
  },
}
