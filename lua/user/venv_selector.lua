local M = {
	"linux-cultist/venv-selector.nvim",
	dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
	event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
	keys = {
		-- Keymap to open VenvSelector to pick a venv.
		{ "<leader>vs", "<cmd>VenvSelect<cr>" },
		-- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
		{ "<leader>vc", "<cmd>VenvSelectCached<cr>" },
	},
}

function M.config()
	require("venv-selector").setup({
		-- Your options go here
		name = "venv",
		auto_refresh = true,
		search_venv_managers = true,
		search_workspace = true,
		search = true,
		dap_enabled = true,
		parents = 3,
		pyenv_path = "/Users/marsch/.pyenv/versions",
	})
end

return M
