local status_ok, vimwiki = pcall(require, "vimwiki")
if not status_ok then
	return
end

vim.g.vimwiki_list = {
	{
		path = "~/vimwiki/",
		syntax = "markdown",
		ext = ".md",
	},
}
