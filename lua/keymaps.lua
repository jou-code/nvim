-- Disables
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { desc = 'Reset Space' })
vim.keymap.set('n', 'Q', '<nop>', { desc = 'Disable Macro' })
vim.keymap.set('n', 'q', '<nop>', { desc = 'Disable Macro' })
vim.keymap.set('n', '<C-o>', '<nop>', { desc = 'Disable jump list' })
vim.keymap.set('n', '<C-i>', '<nop>', { desc = 'Disable jump list' })

-- Splits
vim.keymap.set('n', '<leader>a', ':vnew <CR>:set rnu<CR>', { desc = 'Split', silent = true })
vim.keymap.set('n', '<leader>w', ':wincmd w<CR>', { desc = 'Move focus to next window', silent = true })
vim.keymap.set('n', '<leader>h', '<C-w><C-h>', { desc = 'Move left ' })
vim.keymap.set('n', '<leader>l', '<C-w><C-l>', { desc = 'Move right ' })
vim.keymap.set('n', '<leader>j', '<C-w><C-j>', { desc = 'Move down' })
vim.keymap.set('n', '<leader>k', '<C-w><C-k>', { desc = 'Move up' })
vim.keymap.set('n', '<leader>=', ':wincmd =<CR>', { desc = 'Equalize Buffers', silent = true })

-- Misc
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center when Scroll Page' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center when Scroll Page' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Center when Scroll Page' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Center when Scroll Page' })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Quit Search' })
vim.keymap.set('n', 'B', '<C-v>', { desc = 'Visual Block' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Close', silent = true })
vim.keymap.set('v', '<Tab>', '>', { desc = 'Indent Right' })
vim.keymap.set('v', '<S-Tab>', '<', { desc = 'Indent Left' })

-- Aliases
vim.cmd 'cabbrev Q q'
vim.cmd 'cabbrev Qa qa'
vim.cmd 'cabbrev W w'
vim.cmd 'cabbrev Wq wq'
vim.cmd 'cabbrev Wqa wqa'
vim.cmd 'cabbrev WQ wq'
vim.cmd 'cabbrev WQa wqa'
vim.cmd 'cabbrev WQA wqa'
