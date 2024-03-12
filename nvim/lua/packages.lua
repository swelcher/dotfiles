require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'morhetz/gruvbox'
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use 'airblade/vim-gitgutter'
	use 'dense-analysis/ale'
	use "onsails/lspkind-nvim"
	use 'nvim-lua/plenary.nvim'
	use "kevinhwang91/promise-async"
	use {'kevinhwang91/nvim-ufo',
		dependencies = "kevinhwang91/promise-async",
	}
	use 'preservim/vimux'
	use {'ThePrimeagen/harpoon',
		global_settings = {
			-- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
    save_on_toggle = true,

    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true,

    -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
    enter_on_sendcmd = false,

    -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
    tmux_autoclose_windows = false,

    -- filetypes that you want to prevent from adding to the harpoon list menu.
    excluded_filetypes = { "harpoon" },

    -- set marks specific to each git branch inside git repository
    mark_branch = false,

    -- enable tabline with harpoon marks
    tabline = false,
    tabline_prefix = "   ",
    tabline_suffix = "   ",
		}
	}
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.2' } 
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
        'nvim-treesitter/playground',
      },
    }

	use 'neovim/nvim-lspconfig'

	use 'williamboman/mason.nvim'

	use "williamboman/mason-lspconfig.nvim"

	use 'nvim-tree/nvim-tree.lua'

	use 'nvim-tree/nvim-web-devicons'

	use {'akinsho/bufferline.nvim', tag = "*"}

	use 'hrsh7th/nvim-cmp'

	use 'hrsh7th/cmp-nvim-lsp'

	use 'hrsh7th/cmp-buffer'

	use 'hrsh7th/cmp-path'

	use 'hrsh7th/cmp-cmdline'

end)

require("bufferline").setup{}


