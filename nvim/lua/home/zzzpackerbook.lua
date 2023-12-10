local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		print("Installing packer ....... close and reopen Neovim...")
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()
return require('packer').startup(function(use)		--Packer can manage itself
	use 'wbthomason/packer.nvim'


	-- From NEOVIM FOR BEGINNERS: A COMPLETE GUIDE FROM INSTALLATION TO A FULLY-FLEDGED IDE
	-- LSP
	use 'neovim/nvim-lspconfig'

	-- telescope
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or				     , branch = '0.1.x',
	requires = {{'nvim-lua/plenary.nvim'}}
	}

	-- Git files
	-- use 'lewis6991/gitsigns.nvim
	
	-- Debugger
	-- use 'mfussenegger/nvim-dap'

	-- Here you can add the plugins you want
	--
	-- Automatically setup your configuration after cloning packer.nvim
	--
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
