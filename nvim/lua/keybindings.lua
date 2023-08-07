local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
keymap('n', '<leader>w', ':wincmd w<CR>', opts)
keymap('n', '<leader>r', ':wincmd r<CR>', opts)
keymap('n', '<leader>f', ':Telescope git_files<CR>', opts)
keymap('n', '<leader>s', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>q', ':wincmd h<CR>', opts)
keymap('n', '<leader>g', ':G', opts)
keymap('n', '<leader>p', ':pu<CR>', opts)
keymap('n', '<leader>b', ':Git blame<CR>', opts)
keymap('n', '<leader>a', ':lua require("harpoon.mark").add_file()<CR>', opts)
keymap('n', '<leader>z', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
keymap('n', '<leader>n', ':lua require("harpoon.ui").nav_prev()<CR>', opts)
keymap('n', '<leader>m', ':lua require("harpoon.ui").nav_next()<CR>', opts)
keymap('n', '<leader>t', ':NvimTreeToggle<CR>', opts)
keymap('n', '<leader>v', ':vert sb', opts)
keymap('n', '<leader>k', ':BufferLineCycleNext<CR>', opts)
keymap('n', '<leader>j', ':BufferLineCyclePrev<CR>', opts)

