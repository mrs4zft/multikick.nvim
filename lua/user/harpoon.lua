local M = {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	event = "VeryLazy",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
	},
}

function M.config()
	local harpoon = require("harpoon")
	-- REQUIRED
	harpoon:setup({})
	-- REQUIRED

	vim.keymap.set("n", "<leader>ha", function()
		harpoon:list():append()
	end, { desc = "Harpoon buffer" })
	vim.keymap.set("n", "<leader>hh", function()
		harpoon.ui:toggle_quick_menu(harpoon:list())
	end, { desc = "Harpoon quick menu" })

	-- Quick access to 4 harpoons
	vim.keymap.set("n", "<leader>h1", function()
		harpoon:list():select(1)
	end, { desc = "Harpoon 1" })
	vim.keymap.set("n", "<leader>h2", function()
		harpoon:list():select(2)
	end, { desc = "Harpoon 2" })
	vim.keymap.set("n", "<leader>h3", function()
		harpoon:list():select(3)
	end, { desc = "Harpoon 3" })
	vim.keymap.set("n", "<leader>h4", function()
		harpoon:list():select(4)
	end, { desc = "Harpoon 4" })

	-- Toggle previous & next buffers stored within Harpoon list
	vim.keymap.set("n", "<leader>hk", function()
		harpoon:list():prev()
	end, { desc = "Previous harpoon" })
	vim.keymap.set("n", "<leader>hj", function()
		harpoon:list():next()
	end, { desc = "Next harpoon" })
end

-- function M.mark_file()
--   require("harpoon"):list():append()
--   vim.notify "󱡅  marked file"
-- end

return M
