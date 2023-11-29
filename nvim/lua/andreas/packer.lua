-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { {'nvim-lua/plenary.nvim'} }
	} 

	-- rose pine colorscheme 
	use({ 'rose-pine/neovim',
	as = 'rose-pine',
	config = function() 
		vim.cmd("colorscheme rose-pine")
	end
})
-- Treesitter
use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})
use('nvim-treesitter/playground')
use('nvim-lua/plenary.nvim') 
use('ThePrimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	requires = {
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		-- LSP Support
		{'neovim/nvim-lspconfig'},
		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'L3MON4D3/LuaSnip'},
	}
}
use("folke/zen-mode.nvim")

end)
