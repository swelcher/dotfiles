require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'preservim/nerdtree'
	use 'morhetz/gruvbox'
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use 'airblade/vim-gitgutter'
	use 'dense-analysis/ale'
	use "onsails/lspkind-nvim"
	use 'nvim-lua/plenary.nvim'
	use 'ThePrimeagen/harpoon'
	use 'fatih/vim-go'
	-- May need to run a few times
	use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        require 'treesitter'
      end,
      requires = {
        'windwp/nvim-ts-autotag', -- Automatically end & rename tags
        -- Dynamically set commentstring based on cursor location in file
        'JoosepAlviste/nvim-ts-context-commentstring',
        'nvim-treesitter/playground',
      },
    }
	use 'neovim/nvim-lspconfig'
	use "williamboman/mason.nvim"

end)

require'lspconfig'.pyright.setup{}
require("mason").setup()

require'lspconfig'.terraformls.setup{}

require'lspconfig'.tflint.setup{}

