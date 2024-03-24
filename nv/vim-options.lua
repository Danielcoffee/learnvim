vim.cmd("set filetype")
vim.cmd("set foldmethod=syntax")
vim.cmd("set foldlevelstart=1")
vim.cmd("set foldcolumn=3")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set syntax=sh")
-- title
vim.cmd("set cindent")
vim.cmd("set ma")
--vim.cmd("set cursorline")
vim.cmd("set ls=0")
-- blink cursor
vim.opt.guicursor='n-v-c:block-Cursor/lCursor,' ..
                  'i-ci:ver25-Cursor/lCursor,' ..
                  've:ver35-Cursor,' ..
                  'r-cr:hor20-Cursor/lCursor,' ..
                  'o:hor50-Cursor,' ..
                  'sm:block-Cursor-blinkwait175-blinkoff150-blinkon175,' ..
                  'a:blinkwait200-blinkoff500-blinkon500-Cursor/lCursor'

vim.cmd([[augroup remember_folds
  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent! loadview
augroup END]])

-- status line
vim.cmd([[augroup CursorLineOnlyInActiveWindow
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal number cursorline
  autocmd WinLeave * setlocal nonumber nocursorline
augroup END ]])

vim.g.mapleader = " "
