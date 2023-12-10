vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		-- Opens netrw upon startup
		vim.cmd("Explore")

		-- Sets relative number
		vim.cmd("set relativenumber")
		-- :set relativenumber/norelativenumber

		-- Sets current line number
		vim.cmd("set number")
		-- :set number/nonumber
		
	end,
})
