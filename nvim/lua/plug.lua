
-- plug.vim

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'mrcjkb/rustaceanvim'

vim.call('plug#end')

-- Color schemes should be loaded after plug#end().
-- We prepend it with 'silent!' to ignore errors when it's not yet installed.
--vim.cmd('silent! colorscheme seoul256')
