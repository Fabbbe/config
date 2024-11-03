require('plug')

-- Maps a shortcut in a specific mode
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

-- Destroy backwards compatibility
--vim.opt.nocompatible = true

--syntax on

-- Maybe shorcut to toggle relativenumber?
vim.opt.number = true
vim.filetype.plugin = true
vim.opt.autoindent = true
vim.opt.clipboard = 'unnamedplus'

-- VIM COLORS 
-- There should be something added here if PaperColor doesn't exist

local options = {
	termguicolors = true
}

vim.cmd([[
colorscheme retrobox
set background=dark
hi Normal guibg=NONE ctermbg=NONE
"hi NonText guibg=NONE ctermbg=NONE
"hi EndOfBuffer guibg=NONE ctermbg=NONE
]])



-- Search/Replace in visual mode
map("v", "<C-r>", "hy:%s/<C-r>h//gc<left><left><left>")

-- LSP
