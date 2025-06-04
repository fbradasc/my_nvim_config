local set = vim.opt

set.background = "dark"
set.clipboard = "unnamedplus"
set.completeopt = "noinsert,menuone,noselect"
set.cursorline = true
set.expandtab = true
set.foldexpr = "nvim_treesitter#foldexpr()"
set.foldmethod = "manual"
set.hidden = true
set.inccommand = "split"
set.mouse = "a"
set.number = true
set.relativenumber = true
set.shiftwidth = 4
set.smarttab = true
set.splitbelow = true
set.splitright = true
set.swapfile = false
set.tabstop = 4
set.termguicolors = true
set.title = true
set.ttimeoutlen = 0
set.updatetime = 250
set.wildmenu = true
set.wrap = true

vim.cmd([[
  filetype plugin indent on
  syntax on
  noremap <Up> gk
  noremap <Down> gj
  vnoremap < <gv
  vnoremap > >gv
  nnoremap <S-Up> <C-W><Up>
  nnoremap <S-Down> <C-W><Down>
  nnoremap <S-Left> <C-W><Left>
  nnoremap <S-Right> <C-W><Right>
  nnoremap <unique> <silent> <F2> :Neotree toggle<CR>
  nnoremap <unique> <silent> <F3> :Neotree toggle source=git_status float<CR>
  nnoremap <unique> <silent> <F4> :Neotree toggle source=document_symbols position=right<CR>
  nnoremap <unique> <silent> <F5> :Neotree toggle source=buffers<CR>
  nnoremap <silent> <C-Up>        :resize +1<CR>
  nnoremap <silent> <C-Down>      :resize -1<CR>
  nnoremap <silent> <C-Left>      :vertical resize -1<CR>
  nnoremap <silent> <C-Right>     :vertical resize +1<CR>
  nnoremap <silent> <leader>gg    :grep '<cword>'<CR>:copen<CR>
  nnoremap <silent> <leader>gs    :grep '<C-r>/'<CR>:copen<CR>
]])

-- vim: ts=2 sts=2 sw=2 et
