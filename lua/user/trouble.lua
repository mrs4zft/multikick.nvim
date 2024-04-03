local M = {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}

function M.config()
	vim.keymap.set("n", "<leader>dx", function()
		require("trouble").toggle()
	end, { desc = "Open trouble" })
	vim.keymap.set("n", "<leader>dw", function()
		require("trouble").toggle("workspace_diagnostics")
	end, { desc = "Workspace diagnostics" })
	vim.keymap.set("n", "<leader>dd", function()
		require("trouble").toggle("document_diagnostics")
	end, { desc = "Document diagnostics" })
	vim.keymap.set("n", "<leader>dq", function()
		require("trouble").toggle("quickfix")
	end, { desc = "Trouble quickfix" })
	vim.keymap.set("n", "<leader>dl", function()
		require("trouble").toggle("loclist")
	end, { desc = "Loclist" })
	vim.keymap.set("n", "<leader>dR", function()
		require("trouble").toggle("lsp_references")
	end, { desc = "LSP references" })
	vim.keymap.set("n", "öt", function()
		require("trouble").next({ skip_groups = true, jump = true })
	end, { desc = "Next trouble" })
	vim.keymap.set("n", "ät", function()
		require("trouble").previous({ skip_groups = true, jump = true })
	end, { desc = "Previous trouble" })
end

return M
