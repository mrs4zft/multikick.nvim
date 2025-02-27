local M = {
	"neogitorg/neogit",
	event = "VeryLazy",
}

function M.config()
	vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<CR>", { desc = "Neogit" })

	require("neogit").setup({
		auto_refresh = true,
		disable_builtin_notifications = false,
		use_magit_keybindings = false,
		-- Change the default way of opening neogit
		kind = "tab",
		-- Change the default way of opening the commit popup
		commit_popup = {
			kind = "split",
		},
		-- Change the default way of opening popups
		popup = {
			kind = "split",
		},
		-- customize displayed signs
		integrations = {
			diffview = true,
			telescope = true,
		},
	})
end

return M
