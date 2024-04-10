local M = { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
}

function M.config() -- This is the function that runs, AFTER loading
	require("which-key").setup()

	-- Document existing key chains
	require("which-key").register({
		["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
		["<leader>d"] = { name = "[D]iagnostics", _ = "which_key_ignore" },
		["<leader>f"] = { name = "[F]ind", _ = "which_key_ignore" },
		["<leader>g"] = { name = "[G]it", _ = "which_key_ignore" },
		["<leader>h"] = { name = "[H]arpoon", _ = "which_key_ignore" },
		["<leader>o"] = { name = "[O]rg", _ = "which_key_ignore" },
		["<leader>t"] = { name = "[T]ablemode", _ = "which_key_ignore" },
		["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
	})
end
return M
