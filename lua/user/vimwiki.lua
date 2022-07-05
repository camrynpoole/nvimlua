local status_ok, lf= pcall(require, "lf")
if not status_ok then
  return
end

vim.g.vimwiki_list = {
    {
        path = '~/vimwiki/',
        syntax = 'markdown',
        ext = '.md',
    }
}
