vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)





-- From the book 
-- 	NEOVIM FOR BEGINNERS: A COMPLETE GUIDE FROM INSTALLATION TO A FULLY-FLEDGED IDE

-- pg 23
-- Short cut to quit nevom
vim.keymap.set('n', '<C-q>', vim.cmd.quit)


--		WINDOWS
-- pg 51-51
-- Vertical Split
vim.keymap.set('n', "<leader>+", vim.cmd.vs) --(will need to activate vertical in options.lua, line 68)
--
-- Horizontal Split
--vim.keymap.set('n', "<leader>-", vim.cmd.split) --(will need to activate horizontal in options.lua, line 65)
--
-- Move to window above
--vim.keymap.set('n', '<C-k>', '<C-w>k')
--
-- Move to window below
--vim.keymap.set('n', '<C-j>', '<C-w>j')
--
-- Move to left window
vim.keymap.set('n', '<C-h>', '<C-w>h')
--
-- Move to right window
vim.keymap.set('n', '<C-l>', '<C-w>l')
--
-- Decrease the current window height
vim.keymap.set('n', '<C-Up>', [[<cmd>horizontal resize +5<cr>]])
--
-- Increate the current window height
vim.keymap.set('n', '<C-Down>', [[<cmd>horizontal resize -5<cr>]])
--
-- Decrease the current window width
vim.keymap.set('n', '<C-Right>', [[<cmd>vertical resize +5<cr>]])
--
-- Increate the current window width
vim.keymap.set('n', '<C-Left>', [[<cmd>vertical resize -5<cr>]])
--
-- Close window
vim.keymap.set('n', '<C-q>', vim.cmd.quit)
--
--
--		TABS
-- pg 52
-- Open new tab
vim.keymap.set('n', '<C-t>', vim.cmd.tabnew)
--
-- Close tab
vim.keymap.set('n', '<C-w>', vim.cmd.tabclose)
--
-- Switch to previous tab
vim.keymap.set('n', '<C-p>', vim.cmd.tabprevious)
--
-- Switch to next tab
vim.keymap.set('n', '<C-n>', vim.cmd.tabnext)
--
--
--		BUFFERS
-- pg 52
-- Previous Buffer 
vim.keymap.set('n', '<S-Left>', vim.cmd.bprevious)
--
-- Next Buffer 
vim.keymap.set('n', '<S-Right>', vim.cmd.bnext)
--
-- List Buffer 
vim.keymap.set('n', '<S-Down>', vim.cmd.buffers)
--
-- Go to Buffer 
vim.keymap.set('n', '<S-Up>', ':buffer')
--
-- Delete Buffer 
vim.keymap.set('n', '<S-Del>', vim.cmd.bdelete)
--
--
--		UTILITY
-- pg 57
-- Omni Complete
--vim.keymap.set('i', '<Tab>', '<C-x><C-o')
-- Look into what this does
--
-- Save file on exit in insert mode
--vim.keymap.set('i', '<C-c>', '<Esc>:wa<CR>')
--
-- Save file on exit in normal mode
--vim.keymap.set('i', '<C-c>', '<Esc>:wa<CR>')
--
-- Show keymaps
vim.keymap.set('n', '<leader>?', vim.cmd.map)
--
-- Replace word under the cursor
--vim.keymap.set('n', '<leader>r', ":%s/<C-r><C-w>//g<Left><Left>")
--
-- Find a file
vim.keymap.set('n', '<leader>f', ':find')
--
-- netrw file explorer
vim.keymap.set('n', '<leader>e', ':Lex 30<CR>')
--
-- Toggle list
--vim.keymap.set('n', '<F3>', ':set list!<CR>')
--
--Toggle highlight search
vim.keymap.set('n', '<F4>', ':nohlsearch<Enter>')
--
--
--		VISUAL SELECITON MODE
-- pg 59
-- Replace
--vim.keymap.set('v', '<leader>r', ':s/')
--
-- Yank selection to clipboard
vim.keymap.set('v', '<leader>y', '"+y')
--
-- Delete selection to void register
vim.keymap.set('v', '<leader>d', '"_d')
--
-- Delete selection into void register and paste over it
--vim.keymap.set('v', '<leader>p', '_dp')
--
--
--		MOVEMENT
-- pg 59
-- Join next line keeping curosr position
vim.keymap.set('n', 'J', 'mzJ`z')
--
-- Scroll half page up keeping cursor in the middle
vim.keymap.set('n', '<C-u>', '<C-u>M')
--
-- Scroll half page down keeping cursor in the middle
vim.keymap.set('n', '<C-d>', '<C-d>M')
--
-- Search forwards keeping cursor in the middel
--vim.keymap.set('n', 'n', 'nzzzv')
--
-- Search backwards keeping cursor in the middel
--vim.keymap.set('n', 'N', 'Nzzzv')
--
-- Search word under cursor keeping cursor in the middel
--vim.keymap.set('n', '*', '*zzzv')
--
--
--
--		LOCATON LIST
-- pg 60
-- Navigate through location list
vim.keymap.set('n', '<C-PageUp>', 'vim.cmd.lprev')
vim.keymap.set('n', '<C-PageDown>', 'vim.cmd.lnext')
--
--
--		DISABLE ARROW KEYY
-- pg 61
-- Disable arrow keys
--vim.keymaps.set('n', '<Up>', '<Nop>')
--vim.keymaps.set('n', '<Down>', '<Nop>')
--vim.keymaps.set('n', '<Left>', '<Nop>')
--vim.keymaps.set('n', '<Right>', '<Nop>')
--vim.keymaps.set('n', '<PageUp>', '<Nop>')
--vim.keymaps.set('n', '<PageDown>', '<Nop>')
