-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use ('wbthomason/packer.nvim')

  use ('nvim-lua/plenary.nvim')
	use ('BurntSushi/ripgrep')
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

	use( 
		'nvim-treesitter/nvim-treesitter'
		, { run = ':TSUpdate'})


	use ('nvim-treesitter/playground')

	use ('theprimeagen/harpoon')
	use ('ThePrimeagen/vim-be-good')

	use('mbbill/undotree')

	use('tpope/vim-fugitive')

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	use ('Pocco81/auto-save.nvim')

	use ('lervag/vimtex') -- Latex

	use ('ellisonleao/glow.nvim') -- markdown viewer

	use ("terrortylor/nvim-comment")
  
  use ('nvim-lualine/lualine.nvim') -- Fancy Status bar

  -- use ('lukas-reineke/indent-blankline.nvim') -- Indent line

  -- maybe check out zen-mode plugin, check out Prime's dotfiles 

end)
