local status_ok, lf = pcall(require, "lf")
if not status_ok then
	return
end

lf.setup({
	winblend = 10, -- psuedotransparency level
	direction = "float", -- window type: float horizontal vertical
	border = "double", -- border kind: single double shadow curved
})
