print("plugin/example.lua is executed!")

-- check version to see if user can run this program
if vim.fn.has("nvim-0.7.0") ~= 1 then
	vim.api.nvim_err_writeln("AnimaleseNVIM requires at least nvim-0.7.0.")
end
