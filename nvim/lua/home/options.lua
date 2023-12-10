-- From the book
-- 	NEOVIM FOR BEGINNERS: A COMPLETE GUIDE FROM INSTALLATION TO A FULLY-FLEDGED IDE


-- pg 35
--
-- Removes splash screen
-- vim.opt.shortmess = "I"


-- pg 36
--
-- Show cursor line
vim.opt.cursorline = true


-- pg 37
--
-- Show line numbers
--vim.opt.number = true


-- pg 38
--
-- Do not wrap text
vim.opt.wrap = false


-- pg 41
--
-- Only use current buffer for autocomplete
vim.opt.complete = "."
--
-- Show menu even with one entry only, do not select nor insert, and show preview
vim.opt.completeopt = "menuone,noselect,noinsert,preview" -- menuone/noselect/noinsert/preview
--
-- Menu height (number of lines)
vim.opt.pumheight = 10


-- pg 44-44
--
-- Auto Indent
--vim.opt.autoindent = true
--
-- Smart Indent
--vim.opt.smartindex = true
--
-- Show tabs as N spaces
-- vim.opt.tabstop = 2
--
-- Indent using N columns
-- vim.opt.shiftwidth = 2
--
-- Uses spaces instead of tabs
-- vim.opt.expandtab = true


-- pg 47
--
-- Enable undo files
--vim.opt.undofile = true
--
-- Create new horizontal window below
--vim.opt.splitbelow = true
--
-- Create new vertical window to the right
vim.opt.splitright = true
--
-- Highlight search
--vim.opt.hlsearch = true
--
-- Incremental serach
--vim.opt.incsearch = true
--
-- Add support for local.nvim.lua configuration
--vim.opt.exrc = true
--
-- Disable mouse
--vim.opt.mouse = ""
--
-- Set path to current working directory
--vim.opt.path = ""..vim.fn.getcwd()..", "..vim.fn.getcwd().."/**"
