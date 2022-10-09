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
	use 'fatih/vim-go'
	use {
      'kylechui/nvim-surround',
      config = function()
        require('nvim-surround').setup()
      end,
    }
	use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        require 'config.treesitter'
      end,
      requires = {
        'windwp/nvim-ts-autotag', -- Automatically end & rename tags
        -- Dynamically set commentstring based on cursor location in file
        'JoosepAlviste/nvim-ts-context-commentstring',
        'nvim-treesitter/playground',
      },
    }
	use {
		'hrsh7th/nvim-cmp',
		config = function() require('config/cmp') end,

	}
	use 'saadparwaiz1/cmp_luasnip'
	use {
		'L3MON4D3/LuaSnip',
		after = 'nvim-cmp',
		config = function() 
			require('config/luasnip/custom_snippets') 
		end,
	}

end)


