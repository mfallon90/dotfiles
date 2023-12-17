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

-- Navigate between buffers
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
