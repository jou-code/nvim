return {
  'l3mon4d3/luasnip',
  event = 'insertenter',
  build = (function()
    if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
      return
    end
    return 'make install_jsregexp'
  end)(),
  config = function()
    local ls = require 'luasnip'
    ls.config.set_config {
      history = true,
      pdateevents = 'textchanged,textchandei',
      auto_snippets = true,
    }
    require('luasnip.loaders.from_lua').load { paths = vim.fn.stdpath 'config' .. '/snippets' }
  end,
}
