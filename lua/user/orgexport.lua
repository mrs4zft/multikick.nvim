-- Pandoc to X exports
function export_org_docx(export_extension)
	local bp = vim.fn.expand("%:p:r")
	local bn = vim.fn.expand("%:t:r")
	if bn ~= nil and bn ~= "" then
		local new_filename = bp .. export_extension
		local command = "silent! exec '!pandoc % " .. "-s -o " .. new_filename .. "'"
		vim.cmd(command)
		print(command)
	else
		print("Buffer has no name")
	end
end

vim.keymap.set("n", "<leader>oex", "<cmd>lua export_org_docx('.docx') <CR>", { desc = "Export org file to docx" })
vim.keymap.set("n", "<leader>oem", "<cmd>lua export_org_docx('.md') <CR>", { desc = "Export org file to md" })
vim.keymap.set("n", "<leader>oet", "<cmd>lua export_org_docx('.txt') <CR>", { desc = "Export org file to txt" })
vim.keymap.set("n", "<leader>oer", "<cmd>lua export_org_docx('.rtf') <CR>", { desc = "Export org file to rtf" })
