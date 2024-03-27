return {
  'nvim-pack/nvim-spectre',
  keys = {
    { '<leader>S', '<cmd>lua require("spectre").toggle()<cr><cmd>lua require("spectre").change_view()<CR>', desc = 'Spectre', silent = true },
  },
  opts = {
    is_block_ui_break = true,
    mapping = {
      ['send_to_qf'] = {
        map = '<Nop>',
        cmd = "<cmd>lua require('spectre.actions').send_to_qf()<cr>",
        desc = 'send all items to quickfix',
      },
      ['run_replace'] = {
        map = '<leader><CR>',
        cmd = "<cmd>lua require('spectre.actions').run_replace()<cr>",
        desc = 'replace all',
      },
    },
  },
}
