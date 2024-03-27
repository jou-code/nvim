local ls = require 'luasnip'
local extras = require 'luasnip.extras'
local snipept = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local choice = ls.choice_node
local func = ls.function_node
local rep = extras.rep

ls.add_snippets('c', {
  snipept('main', {
    text 'int main(int argc, char *argv[])',
    text {'', '{', '', '\t' },
    insert(1),
    text { '', '\treturn 0;' },
    text { '', '}' },
  }),
})
ls.add_snippets('cpp', {
  snipept('typedef', {
    text 'typedef struct ',
    insert(1),
    text { '', '{', '\t' },
    insert(2),
    text { '', '} \t' },
    rep(1),
    text ';',
  }),
})
ls.add_snippets('c', {
  snipept('if', {
    text 'if (',
    insert(1),
    text { ')', '{', '\t' },
    insert(2),
    text { '' },
    text { '', '}' },
  }),
})
ls.add_snippets('c', {
  snipept('else if', {
    text 'else if (',
    insert(1),
    text { ')', '{', '\t' },
    insert(2),
    text { '' },
    text { '', '}' },
  }),
})
ls.add_snippets('c', {
  snipept('else', {
    text 'else',
    text { '', '{', '\t' },
    insert(1),
    text { '' },
    text { '', '}' },
  }),
})
ls.add_snippets('c', {
  snipept('while', {
    text 'while (',
    insert(1),
    text {')', '{'},
    text { '', '\t' },
    insert(2),
    text { '', '}' },
  }),
})
ls.add_snippets('c', {
  snipept('malloc', {
    insert(1),
    text ' = ',
    text 'malloc(sizeof(',
    insert(2),
    text ') * ',
    insert(3),
    text ');',
    text { '', 'if (!' },
    rep(1),
    text { ')', '\treturn (NULL);', '' },
    insert(4),
  }),
})
