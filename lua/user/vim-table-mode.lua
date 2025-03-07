local M = {
	"dhruvasagar/vim-table-mode",
	ft = { "markdown", "org" }, -- Lädt das Plugin nur für Markdown-Dateien
}

function M.config()
	vim.g.table_mode_corner = "|" -- Definiert das Eckzeichen der Tabelle
	vim.g.table_mode_disable_mappings = 0 -- Standard-Keymaps aktivieren
	vim.g.table_mode_auto_align = 1 -- Automatische Ausrichtung aktivieren
end

return M
