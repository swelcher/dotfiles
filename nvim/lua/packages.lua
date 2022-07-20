-- Credit to https://github.com/tjdevries 
-- https://github.com/hrsh7th
-- https://github.com/rafamadriz

require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'preservim/nerdtree'
	use 'morhetz/gruvbox'
	use 'mbbill/undotree'
	use 'vim-ruby/vim-ruby'
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use 'airblade/vim-gitgutter'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-rails'
	use 'dense-analysis/ale'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp'
	use "onsails/lspkind-nvim"
	use 'rafamadriz/friendly-snippets'
	use 'nvim-lua/plenary.nvim'
	use 'ThePrimeagen/harpoon'
	use {
		'hrsh7th/nvim-cmp',
		config = function() require('config/cmp') end,

	}
	use 'saadparwaiz1/cmp_luasnip'

	use {
		'L3MON4D3/LuaSnip',
		after = 'nvim-cmp',
		config = function() require('config/luasnip/snippets') 
			require("luasnip.loaders.from_vscode").lazy_load({ paths = { "config/luasnip" } })
		end,
	}


end)

