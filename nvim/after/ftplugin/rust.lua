local bufnr = vim.api.nvim_get_current_buf()

vim.opt_local.tabstop    =4
vim.opt_local.shiftwidth =4
vim.opt_local.expandtab  =true
vim.opt_local.completeopt={'menu','preview','noinsert'}

vim.opt_local.colorcolumn={80,100}

map('i', '"', '""<left>')
map('i', '(', '()<left>')
map('i', '[', '[]<left>')
map('i', '{', '{}<left>')
map('i', '{<CR>', '{<CR>}<ESC>O')

-- LSP
vim.keymap.set(
	'n', 
	'<leader>a',
	function()
		vim.cmd.RustLsp('codeAction')
	end,
	{ silent = true, buffer = bufnr }
)
