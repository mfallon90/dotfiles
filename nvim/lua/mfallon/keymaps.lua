local opts = {noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Set leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Set escape keys
keymap("i", "jk", "<Esc>", opts)
keymap("v", "<leader>jk", "<Esc>", opts)

-- Vim motions
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)

-- find words
keymap("n", "fw", "viw*N<Esc>", opts)
keymap("n", "fW", "viW*N", opts)
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

-- Move chunks in visual mode
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Open splits
keymap("n", "<leader>v", "<Cmd>vsplit<Cr>", opts)
keymap("n", "<leader>s", "<Cmd>split<Cr>", opts)

-- Toggle case
keymap("n", "<leader>u", "gUiw", opts)
keymap("n", "<leader>l", "guiw", opts)
keymap("n", "<leader>t", "~h", opts)

-- Rearrange buffers
keymap("n", "<leader>w1", "<C-w>1x<C-w>1w", opts)
keymap("n", "<leader>w2", "<C-w>2x<C-w>2w", opts)
keymap("n", "<leader>w3", "<C-w>3x<C-w>3w", opts)
keymap("n", "<leader>w4", "<C-w>4x<C-w>4w", opts)
keymap("n", "<leader>w5", "<C-w>5x<C-w>5w", opts)

-- Insert newline
keymap("n", "<leader>o", "o<Esc>k", opts)
keymap("n", "<leader>O", "O<Esc>j", opts)

-- Navigate in insert mode
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-l>", "<Right>", opts)

-- Navigate between buffers
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Yank and put to clipboards
keymap("v", "<C-y>", "\"+y", opts)
keymap("n", "<C-p>", "\"+P", opts)

-- Nvim-Tree
keymap("n", "<leader>e", "<Cmd>NvimTreeToggle<Cr>", opts)
keymap("n", "<leader>c", "<Cmd>NvimTreeCollapse<Cr>", opts)

-- Comment lines
keymap("v", "<leader>/", ":'<,'>Commentary<Cr>", opts)
keymap("n", "<leader>/", ":Commentary<Cr>", opts)

-- Jump to context
keymap("n", "[c", "<Cmd>lua require('treesitter-context').go_to_context()<Cr>zz", opts)

-- Gitsigns keymaps
keymap("n", "<leader>bl", "<Cmd>Gitsigns blame_line<Cr>", opts)
keymap("n", "<leader>dh", "<Cmd>Gitsigns preview_hunk<Cr>", opts)
keymap("n", "<leader>nh", "<Cmd>Gitsigns next_hunk<Cr>", opts)
keymap("n", "<leader>ph", "<Cmd>Gitsigns prev_hunk<Cr>", opts)

-- Fzf-lua
keymap('n', '<leader>ffi', ':lua FILES_IGNORE()<CR>', opts)
keymap('n', '<leader>ffn', ':lua FILES_NO_IGNORE()<CR>', opts)
keymap('n', '<leader>rgi', ':lua RIP_GREP_IGNORE()<CR>', opts)
keymap('n', '<leader>rgn', ':lua RIP_GREP_NO_IGNORE()<CR>', opts)
keymap('n', '<leader>lgi', ':lua LIVE_GREP_IGNORE()<CR>', opts)
keymap('n', '<leader>lgn', ':lua LIVE_GREP_NO_IGNORE()<CR>', opts)

-- resize buffers
keymap('n', '<leader>=', '<Cmd>wincmd =<CR>', opts)
keymap('n', '<leader>|', '<Cmd>vertical resize<CR>', opts)
keymap('n', '<leader>-', '<Cmd>resize<CR>', opts)

-- alignment keymaps
keymap('n', "ga", ":EasyAlign<Cr>", opts)
keymap('x', "ga", ":EasyAlign<Cr>", opts)
keymap('v', "ga", ":EasyAlign<Cr>", opts)

-- clear highlights
keymap("n", "<leader>hl", "<Cmd>noh<Cr>", opts)
