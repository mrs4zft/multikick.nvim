local M = { -- slime lets you send code snippets to REPL
	"jpalardy/vim-slime",
	lazy = false,
	--    init = function()
	--        vim.g.slime_no_mappings = 1
	--    end
}

function M.config()
	vim.g.slime_target = "tmux"
end
return M
