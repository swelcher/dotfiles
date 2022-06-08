local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
keymap('n', '<leader>w', ':wincmd w<CR>', opts)
keymap('n', '<leader>r', ':wincmd r<CR>', opts)
keymap('n', '<leader>f', ':FZF<CR>', opts)
keymap('n', '<leader>s', ':Rg<CR>', opts)
keymap('n', '<leader>q', ':wincmd h<CR>', opts)
keymap('n', '<leader>g', ':G', opts)
