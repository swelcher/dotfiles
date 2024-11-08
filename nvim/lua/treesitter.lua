# https://github.com/JoosepAlviste/dotfiles/blob/master/config/nvim/lua/j/plugins/treesitter.lua
require('nvim-treesitter.install').compilers = { 'gcc' }
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = {
    enable = true,
  },
  playground = {
    enable = false,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
  },
  autotag = {
    enable = true,
  },
  autopairs = {
    enable = true,
  },
  ensure_installed = {
    'bash',
    'css',
    'go',
    'graphql',
    'html',
    'javascript',
    'jsdoc',
    'json',
    'lua',
		'luadoc',
    'markdown',
    'markdown_inline',
    'python',
    'query',
    'ruby',
    'rust',
    'scss',
    'svelte',
    'vim',
		'vimdoc',
    'yaml',
  },
}
