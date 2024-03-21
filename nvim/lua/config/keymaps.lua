-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Add any additional keymaps here
local opts = { noremap = true, silent = false }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
vim.g.mapleader = " "

-- Normal --

-- Splits
keymap("n", "<leader>sv", "<C-w>v", opts) -- split vertically
keymap("n", "<leader>sh", "<C-w>s", opts) -- split horizontally
keymap("n", "<leader>sx", ":close<CR>", opts) -- close window

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --

-- Press jk fast to enter
keymap("i", "jk", "<Esc>", opts)

-- Visual --

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Leader mappings --
-- Quit & Save --
keymap("n", "<Leader>v", "<C-w>v<C-w>l", opts)

-- OS Clipboard --
keymap("n", "<Leader>y", '"+y', opts)
keymap("v", "<Leader>y", '"+y', opts)
keymap("n", "<Leader>p", '"*p"', opts)
keymap("n", "<Leader>P", '"+p"', opts)
-- Better paste (apparently) -- Didnt work for me
--keymap("n", "<Leader>p", '"_dP', opts)

-- Temp note --
keymap("n", "<Leader>n", ":tab drop /tmp/scratchpad.md<CR>", opts)

-- Copy entire buffer into the system clipboard
vim.api.nvim_set_keymap("n", "<leader>yy", ':lua vim.api.nvim_command("%y+")<CR>', { noremap = true, silent = true })
