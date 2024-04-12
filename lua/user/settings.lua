-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

-- NOTE: For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "auto"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 99
-- dito left and right
vim.opt.sidescrolloff = 8

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- creates a backup file
vim.opt.backup = false

-- more space in the neovim command line for displaying messages
vim.opt.cmdheight = 1

-- mostly just for cmp
vim.opt.completeopt = { "menuone", "noselect" }

-- so that `` is visible in markdown files
vim.opt.conceallevel = 2
vim.opt.concealcursor = "nc"

-- the encoding written to a file
vim.opt.fileencoding = "utf-8"
-- vim.opt.pumheight = 10 -- pop up menu height
-- vim.opt.pumblend = 10
-- vim.opt.showtabline = 1 -- always show tabs

vim.opt.smartindent = true -- make indenting smarter again

-- creates a swapfile
vim.opt.swapfile = false

-- set term gui colors (most terminals support this)
vim.opt.termguicolors = true

-- if false, a file is edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.writebackup = true

-- enable selction of a block for unequal line length
vim.opt.virtualedit = "block"

-- the number of spaces inserted for each indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- convert tabs to spaces
vim.opt.expandtab = true

-- decides which of the splits have a status line.
vim.opt.laststatus = 2

-- Show (partial) command in the last line of the screen.  Set this option off if your terminal is slow.
vim.opt.showcmd = false

-- set number column width to 2 {default 4}
vim.opt.numberwidth = 3

-- always show the sign column, otherwise it would shift the text each time
vim.opt.signcolumn = "yes"

-- display lines as one long line
vim.opt.wrap = false

-- show the filename in the window title.
vim.opt.title = true

-- mark a column to prevent from writing to long lines.
-- colorcolumn = "120",
vim.opt.colorcolumn = "120"

-- This option helps to avoid all the |hit-enter| prompts caused by file
-- messages, for example  with CTRL-G, and to avoid some other messages.
-- It is a list of flags:
vim.opt.shortmess:append("c")

-- Allow specified keys that move the cursor left/right to move to the
-- previous/next line when the cursor is on the first/last character in
-- the line.  Concatenate characters to allow this for these keys:
vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])

vim.g.netrw_banner = 0
vim.g.netrw_mouse = 2
vim.g.python3_host_prog = "~/.pyenv/versions/neovim/bin/python3"

vim.opt.isfname:append("@-@")

-- fillchars are used for special areas of windows. I think this would e.g. remove chars for window separation.
-- vim.opt.fillchars = vim.opt.fillchars + "eob: "
-- vim.opt.fillchars:append({
-- 	stl = " ",
-- })
