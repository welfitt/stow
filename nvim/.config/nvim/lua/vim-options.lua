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
vim.keymap.set('n', '<leader>f', ':FZF<CR>')
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>s', 'I`<ESC>A`<ESC>j')
vim.keymap.set('v', '<leader>s', 'I`<ESC>gvA`<ESC>')
vim.keymap.set('n', '<leader>S', ':Grepper-cword -noprompt <CR>')
vim.keymap.set('n', '<leader>G', ':GrepperRg ')
vim.keymap.set('n','gs', '<plug>(GrepperOperator) ')
vim.keymap.set('v','gs', '<plug>(GrepperOperator) ')
vim.keymap.set('n', '<leader>t', ':terminal<CR>i')
vim.keymap.set('n', '<leader>u', 'odefault_tags = { yor_trace = ":r! uuidgen<CR>kJxA"}Vu')
vim.keymap.set('n', '<leader>U', 'i\\k:r!uuidgen<CR>kJAVukJJF xf x')
vim.keymap.set('n', '<leader>j', 'i\\k:r!uuidgen<CR>')
vim.keymap.set('n', '<leader>w', '<C-w>')
--vim.keymap.set('t', '<C-t>', '<C-\\><C-n>')
