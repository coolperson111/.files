local set = vim.keymap.set


-- [[ Basic Keymaps - KickStart]]
--  See `:help set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


-- [[ Keymaps - Personal ]]

-- move everything inside visual mode
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

-- center screen always (zz)
set("n", "J", "mzJ`z")
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

-- copy to clipboard
set({"n", "v"}, "<leader>y", [["+y]])
set("n", "<leader>Y", [["+Y]])

-- autoclose brackets
set("i", "{<CR>" ,"{<CR>}<Esc>ko")
set("i", "[<CR>" ,"[<CR>]<Esc>ko")
set("i", "(<CR>" ,"(<CR>)<Esc>ko")

-- TODO - add keymaps from TJdevries video

-- Executions
set("n", "<leader>x", "<cmd>.lua<CR>", { desc = "Execute the current line" })
set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Execute the current file" })

--Control height of splits
set("n", "<C-,>", "<c-w>5<")
set("n", "<C-.>", "<c-w>5>")
-- set("n", "<M-t>", "<c-w>+")
-- set("n", "<M-s>", "<c-w>-")
