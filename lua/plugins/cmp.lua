return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'onsails/lspkind.nvim',
  },
  config = function()
    local cmp_enabled = true
    vim.api.nvim_create_user_command('CmpToggle', function()
      if cmp_enabled then
        require('cmp').setup.buffer { enabled = false }
        cmp_enabled = false
        vim.api.nvim_command 'echo "Autocomplete Off"'
      else
        require('cmp').setup.buffer { enabled = true }
        cmp_enabled = true
        vim.api.nvim_command 'echo "Autocomplete On"'
      end
    end, {})
    local cmp = require 'cmp'
    local luasnip = require 'luasnip'
    local lspkind = require 'lspkind'
    luasnip.config.setup {}
    cmp.setup {
      formatting = {
        format = lspkind.cmp_format {
          mode = 'symbol_text',
          menu = {
            nvim_lsp = '',
            luasnip = '',
            nvim_lsp_signature_help = '',
            path = '',
            buffer = '',
          },
        },
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mode = 'symbol_text',
      completion = { completeopt = 'menu,menuone,noinsert' },
      preselect = cmp.PreselectMode.None,
      mapping = cmp.mapping.preset.insert {
        ['<S-Tab>'] = cmp.mapping.select_next_item(),
        ['<C-c>'] = cmp.mapping.confirm { select = true },
      },
      sources = {
        { name = 'luasnip' },
        { name = 'path' },
      },
    }
  end,
}
