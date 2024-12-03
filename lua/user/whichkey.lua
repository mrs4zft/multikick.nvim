local M = { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
}

function M.config() -- This is the function that runs, AFTER loading
	require("which-key").setup()

	-- Document existing key chains
	require("which-key").add({
		{
			{ "<leader>c", group = "[C]ode" },
			{ "<leader>c_", hidden = true },
			{ "<leader>d", group = "[D]iagnostics" },
			{ "<leader>d_", hidden = true },
			{ "<leader>f", group = "[F]ind" },
			{ "<leader>f_", hidden = true },
			{ "<leader>g", group = "[G]it" },
			{ "<leader>g_", hidden = true },
			{ "<leader>h", group = "[H]arpoon" },
			{ "<leader>h_", hidden = true },
			{ "<leader>o", group = "[O]rg" },
			{ "<leader>o_", hidden = true },
			{ "<leader>oe", group = "Pandoc [E]xport" },
			{ "<leader>oe_", hidden = true },
			{ "<leader>t", group = "[T]ablemode" },
			{ "<leader>t_", hidden = true },
			{ "<leader>w", group = "[W]orkspace" },
			{ "<leader>w_", hidden = true },
		},
	})
end
return M
