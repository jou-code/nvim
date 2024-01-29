local on_attach = function(_, bufnr)
  local nmap = function(keys, func, desc)
    -- if desc then
    --   desc = "LSP: " .. desc
    -- end
    vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
  end
  nmap("<leader>s", vim.lsp.buf.rename, "Rename")
  nmap("<leader>c", vim.lsp.buf.code_action, "Code Action")
  -- nmap('gd', vim.lsp.buf.declaration , '[G]oto [D]eclaration')
  nmap("gd", vim.lsp.buf.definition, "Goto Definition")
  --nmap('<leader>.....', vim.lsp.buf.type_definition, 'Type [D]efinition')
  nmap("<leader>r", require("telescope.builtin").lsp_references, "Goto References")
  nmap("K", vim.lsp.buf.hover, "Hover Documentation")
  -- nmap('gd', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
  --nmap('<leader>......', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
  --nmap('<leader>......', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
  -- nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')
  -- nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

  vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
    vim.lsp.buf.format()
  end, { desc = "Format current buffer with LSP" })
end
local servers = {
  clangd = {},
  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
}
local capabilities = vim.lsp.protocol.make_client_capabilities()
local mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup({
  ensure_installed = vim.tbl_keys(servers),
})
mason_lspconfig.setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
      filetypes = (servers[server_name] or {}).filetypes,
    })
  end,
})
