vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd([[
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
]])
vim.g.mapleader = " "
vim.opt.relativenumber = false
vim.opt.number = true
vim.opt.conceallevel = 2
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt_local.makeprg = "javac %"
vim.keymap.set('n', '<leader>y', '<Plug>OSCYankOperator')
vim.keymap.set('n', '<leader>cc', '<leader>c_', {remap = true})
vim.keymap.set('v', '<leader>y', '<Plug>OSCYankVisual')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>t', ':terminal<CR>i')
vim.keymap.set('n', '<leader>u', 'odefault_tags = { yor_trace = ":r! uuidgen<CR>kJxA"}Vu')
vim.keymap.set('n', '<leader>w', '<C-w>')
vim.keymap.set('t', '<C-t>', '<C-\\><C-n>')

