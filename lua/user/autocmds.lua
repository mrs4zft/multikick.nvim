-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "org",
	callback = function()
		vim.keymap.set("i", "<C-Space>", '<cmd>lua require("orgmode").action("org_mappings.meta_return")<CR>', {
			silent = true,
			buffer = true,
		})
		vim.keymap.set("n", "<C-Space>", '<cmd>lua require("orgmode").action("org_mappings.toggle_checkbox")<CR>', {
			silent = true,
			buffer = true,
		})
	end,
})
