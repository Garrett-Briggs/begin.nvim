vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer.nvim
	use 'wbthomason/packer.nvim'

	-- Catppuccin colorscheme
	use { "catppuccin/nvim" , as = "catppuccin" }
	-- mocha color
	vim.cmd.colorscheme "catppuccin-mocha"   -- latte, frappe, macchiato, mocha
	
end)
