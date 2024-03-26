vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
		winblend = 10,
		previewer = false,
	})
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>f', '<cmd>Telescope file_browser path=%:p:h theme=ivy<cr>', { desc = '[F]ile Browser' })
-- vim.keymap.set('n', '<leader>f', require('telescope').extensions.file_browser.file_browser, { desc = '[F]ile Browser' })

-- Diagnostic keymaps
vim.keymap.set('n', 'dk', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', 'dj', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>dm', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, { desc = '[G]oto [R]eferences' })

-- Buffer keymaps
vim.keymap.set('n', '<leader>bn', '<cmd>tabnew<cr>', { desc = 'New tab' })
vim.keymap.set('n', '<leader>bc', '<cmd>BufferLinePickClose<cr>', { desc = 'Pick to close' })
vim.keymap.set('n', '<leader>bj', '<cmd>BufferLinePick<cr>', { desc = 'Pick to jump' })
vim.keymap.set('n', '<leader>bt', '<cmd>BufferLineSortByTabs<cr>', { desc = 'Sort by tabs' })
vim.keymap.set('n', '<C-h>', '<cmd>bprevious<cr>', { desc = 'Next buffer' })
vim.keymap.set('n', '<C-l>', '<cmd>bnext<cr>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = 'Close buffer' })
vim.keymap.set('n', '<C-k>', '<cmd>tabnext<cr>', { desc = 'Next tab' })
vim.keymap.set('n', '<C-j>', '<cmd>tabprevious<cr>', { desc = 'Previous tab' })

-- Toggleterm keymaps
vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', { desc = 'ToggleTerm float' })
vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm size=10 direction=horizontal<cr>',
	{ desc = 'ToggleTerm horizontal split' })
vim.keymap.set('n', '<leader>tv', '<cmd>ToggleTerm size=80 direction=vertical<cr>',
	{ desc = 'ToggleTerm vertical split' })
vim.keymap.set('t', '<leader>th', '<cmd>ToggleTerm size=10 direction=horizontal<cr>',
	{ desc = 'ToggleTerm horizontal split' })
vim.keymap.set('t', '<C-wh>', '<c-\\><c-n><c-w>h', { desc = 'Terminal left window navigation' })
vim.keymap.set('t', '<C-j>', '<c-\\><c-n><c-w>j', { desc = 'Terminal left window navigation' })
vim.keymap.set('t', '<C-k>', '<c-\\><c-n><c-w>k', { desc = 'Terminal left window navigation' })
vim.keymap.set('t', '<C-l>', '<c-\\><c-n><c-w>l', { desc = 'Terminal left window navigation' })

local term = require('toggleterm.terminal').Terminal
local lazygit = term:new({ cmd = 'lazygit', hidden = true, direction = 'float' })

function _lazygit_toggle()
	lazygit:toggle()
end

vim.keymap.set('n', '<leader>gg', '<cmd>lua _lazygit_toggle()<cr>',
	{ desc = 'ToggleTerm lazygit', noremap = true, silent = true })
