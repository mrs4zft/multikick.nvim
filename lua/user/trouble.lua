local M = {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{
			"<leader>dx",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>dX",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Buffer Diagnostics (Trouble)",
		},
		{
			"<leader>dcs",
			"<cmd>Trouble symbols toggle focus=false<cr>",
			desc = "Symbols (Trouble)",
		},
		{
			"<leader>dcl",
			"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
			desc = "LSP Definitions / references / ... (Trouble)",
		},
		{
			"<leader>dL",
			"<cmd>Trouble loclist toggle<cr>",
			desc = "Location List (Trouble)",
		},
		{
			"<leader>dQ",
			"<cmd>Trouble qflist toggle<cr>",
			desc = "Quickfix List (Trouble)",
		},
		{
			"öt",
			"<cmd>Trouble diagnostics next jump=true<cr>",
			desc = "Next Trouble",
		},
		{
			"ät",
			"<cmd>Trouble diagnostics prev jump=true<cr>",
			desc = "Previous Trouble",
		},
	},
}
-- local M = {
-- 	"folke/trouble.nvim",
-- 	opts = {
-- 		-- your configuration comes here
-- 		-- or leave it empty to use the default settings
-- 		-- refer to the configuration section below
-- 	},
-- 	cmd = "Trouble",
-- 	keys = {
-- 		{
-- 			"<leader>dx",
-- 			"<cmd>Trouble diagnostics toggle<cr>",
-- 			desc = "Diagnostics (Trouble)",
-- 		},
-- 	},
-- }
--
-- function M.config()
-- 	vim.keymap.set("n", "<leader>dw", function()
-- 		require("trouble").toggle("workspace_diagnostics")
-- 	end, { desc = "Workspace diagnostics" })
-- 	vim.keymap.set("n", "<leader>dd", function()
-- 		require("trouble").toggle("document_diagnostics")
-- 	end, { desc = "Document diagnostics" })
-- 	vim.keymap.set("n", "<leader>dq", "<cmd>Trouble qflist toggle<cr>", { desc = "Trouble quickfix" })
-- 	vim.keymap.set("n", "<leader>dl", function()
-- 		require("trouble").toggle("loclist")
-- 	end, { desc = "Loclist" })
-- 	vim.keymap.set("n", "<leader>dR", function()
-- 		require("trouble").toggle("lsp_references")
-- 	end, { desc = "LSP references" })
-- vim.keymap.set("n", "öt", function()
-- 	require("trouble").next({ skip_groups = true, jump = true })
-- end, { desc = "Next trouble" })
-- 	vim.keymap.set("n", "ät", function()
-- 		require("trouble").previous({ skip_groups = true, jump = true })
-- 	end, { desc = "Previous trouble" })
-- end
--
return M
