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
    local snipept = ls.snippet
    local text = ls.text_node
    local insert = ls.insert_node
    local choice = ls.choice_node
    local func = ls.function_node
    ls.add_snippets('c', {
      snipept('main', {
        text 'int main(int argc, char *argv[]){',
        text { '', '\t' },
        insert(1),
        text { '', '', '\treturn 0;' },
        text { '', '}' },
      }),
    })
    ls.add_snippets('c', {
      snipept('if', {
        text 'if (',
        insert(1),
        text { ')', '{', '\t'},
        insert(2),
        text {''},
        text { '', '}' },
      }),
    })
    ls.add_snippets('c', {
      snipept('else if', {
        text 'else if (',
        insert(1),
        text { ')', '{', '\t'},
        insert(2),
        text {''},
        text { '', '}' },
      }),
    })
    ls.add_snippets('c', {
      snipept('else', {
        text 'else',
        text { '', '{', '\t'},
        insert(1),
        text {''},
        text { '', '}' },
      }),
    })
    ls.add_snippets('c', {
      snipept('while', {
        text 'while (',
        insert(1),
        text ') {',
        text { '', '\t' },
        insert(2),
        text { '', '}' },
      }),
    })
    ls.add_snippets('c', {
      snipept('malloc', {
        text 'malloc(',
        insert(1),
        text ' * sizeof(',
        insert(2),
        text '));',
      }),
    })
  end,
}
