vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-k>'    , '<C-w><C-k>'  , { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<C-j>'    , '<C-w><C-j>'  , { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-h>'    , '<C-w><C-h>'  , { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>'    , '<C-w><C-l>'  , { desc = 'Move focus to the right window' })

vim.keymap.set('n', '<S-Up>'   , '<C-w><Up>'   , { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<S-Down>' , '<C-w><Down>' , { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<S-Left>' , '<C-w><Left>' , { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<S-Right>', '<C-w><Right>', { desc = 'Move focus to the right window' })

-- vim.keymap.set('n', '<leader>e', ':Ex<cr>', { desc = 'Open [E]xplorer' })
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right' })

vim.keymap.set('n', '<F2>'      , ':Neotree toggle<CR>', { unique = true, silent = true, desc = 'Toggle file explorer' })
vim.keymap.set('n', '<F3>'      , ':Neotree toggle source=git_status float<CR>', { unique = true, silent = true, desc = 'Toggle git explorer' })
vim.keymap.set('n', '<F4>'      , ':Neotree toggle source=document_symbols position=right<CR>', { unique = true, silent = true, desc = 'Toggle symbols explorer' })
vim.keymap.set('n', '<F5>'      , ':Neotree toggle source=buffers<CR>', { unique = true, silent = true, desc = 'Toggle buffers explorer' })
vim.keymap.set('n', '<F6>'      , ':Neotree toggle source=diagnostics position=bottom<CR>', { unique = true, silent = true, desc = 'Toggle buffers explorer' })
vim.keymap.set('n', '<C-Up>'    , ':resize +1<CR>', { silent = true, desc = 'Increase horizontal window size' })
vim.keymap.set('n', '<C-Down>'  , ':resize -1<CR>', { silent = true, desc = 'Increase horizontal window size' })
vim.keymap.set('n', '<C-Left>'  , ':vertical resize -1<CR>', { silent = true, desc = 'Decrease vertical window size' })
vim.keymap.set('n', '<C-Right>' , ':vertical resize +1<CR>', { silent = true, desc = 'Increase vertical window size' })
vim.keymap.set('n', '<leader>gg', ':grep \'<cword>\'<CR>:copen<CR>', { silent = true, desc = 'Grep word under cursor' })
vim.keymap.set('n', '<leader>gs', ':grep \'<C-r>/\'<CR>:copen<CR>', { silent = true, desc = 'Grep last search pattern' })

vim.keymap.set('', '<Up>', 'gk')
vim.keymap.set('', '<Down>', 'gj')


vim.keymap.set("n", "<leader>q", function()
  require("quicker").toggle()
end, {
  desc = "Toggle quickfix",
})
vim.keymap.set("n", "<leader>l", function()
  require("quicker").toggle({ loclist = true })
end, {
  desc = "Toggle loclist",
})

