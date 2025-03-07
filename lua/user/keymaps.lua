vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Keymaps
-- Remove search highlights through ESC
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Escape search highlights" })

-- Diagnostic keymaps
vim.keymap.set("n", "äd", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "öd", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<M-j>", "<C-w>w", { noremap = true, silent = true, desc = "Next Window" }) -- Alt j

-- Handle accesibility of braces on german keyboard
vim.keymap.set("n", "<C-ä>", "<C-]>", { noremap = true, silent = true, desc = "Follow tag" })
vim.keymap.set("n", "<S-Ö>", "{zz", { noremap = true, silent = true, desc = "Jump paragraph up" })
vim.keymap.set("n", "<S-Ä>", "}zz", { noremap = true, silent = true, desc = "Jump paragraph down" })
vim.keymap.set("n", "ü", "@", { noremap = true, silent = true, desc = "easy @" })

-- Buffer related
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { noremap = true, silent = true, desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>bprev<CR>", { noremap = true, silent = true, desc = "Previous Buffer" })

-- Stay centered on moving
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "Scroll half page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true, desc = "Scroll half page up" })
vim.keymap.set("n", "n", "nzzzv", { noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true, silent = true })
vim.keymap.set("n", "*", "*zz", { noremap = true, silent = true })
vim.keymap.set("n", "#", "#zz", { noremap = true, silent = true })
vim.keymap.set("n", "g*", "g*zz", { noremap = true, silent = true })
vim.keymap.set("n", "g#", "g#zz", { noremap = true, silent = true })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- more good
vim.keymap.set({ "n", "o", "x" }, "<s-h>", "^", { noremap = true, silent = true, desc = "Goto first char" })
vim.keymap.set({ "n", "o", "x" }, "<s-l>", "g_", { noremap = true, silent = true, desc = "Goto last char" })

-- Walk visual lines instead of real lines.
-- vim.keymap.set({ "n", "x" }, "j", "gj", { noremap = true, silent = true, desc = "" })
-- vim.keymap.set({ "n", "x" }, "k", "gk", { noremap = true, silent = true, desc = "" })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- toggle line wrap on and off.
vim.keymap.set(
	"n",
	"<leader>W",
	":lua vim.wo.wrap = not vim.wo.wrap<CR>",
	{ noremap = true, silent = true, desc = "Toggle line wrap" }
)

-- Move highlighted text up and down and indent properly
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Leave cursor where it is when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- In visual mode, replace/delete selection without yanking
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without yank" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yank" })

-- Drive a substitution for the word under the cursor.
vim.keymap.set(
	"n",
	"<leader>C",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Change word under cursor" }
)
