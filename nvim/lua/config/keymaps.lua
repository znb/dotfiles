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
local km = vim.api.nvim_set_keymap

--Remap space as leader key
vim.g.mapleader = " "

-- Splits
km("n", "<leader>sv", "<C-w>v", opts) -- split vertically
km("n", "<leader>sh", "<C-w>s", opts) -- split horizontally
km("n", "<leader>sx", ":close<CR>", opts) -- close window

-- Copy and comment
km("n", "<leader>yc", "yy<cmd>normal gcc<CR>p", opts)

-- Quick change
km("n", "CR", "ciw", opts)

-- Save file
km("n", "<leader>W", ":w<CR>", opts)

-- Better window navigation
km("n", "<C-h>", "<C-w>h", opts)
km("n", "<C-j>", "<C-w>j", opts)
km("n", "<C-k>", "<C-w>k", opts)
km("n", "<C-l>", "<C-w>l", opts)

-- Swap buffers
km("n", "<leader>;", ":b#<CR>", opts)

-- Resize with arrows
km("n", "<C-Up>", ":resize -2<CR>", opts)
km("n", "<C-Down>", ":resize +2<CR>", opts)
km("n", "<C-Left>", ":vertical resize -2<CR>", opts)
km("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
km("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
km("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Press jk fast to enter
km("i", "jk", "<Esc>", opts)

-- Stay in indent mode
km("v", "<", "<gv", opts)
km("v", ">", ">gv", opts)

-- Move text up and down
km("v", "<A-j>", ":m .+1<CR>==", opts)
km("v", "<A-k>", ":m .-2<CR>==", opts)
km("v", "p", '"_dP', opts)

-- Move text up and down
km("x", "J", ":move '>+1<CR>gv-gv", opts)
km("x", "K", ":move '<-2<CR>gv-gv", opts)
km("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
km("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Leader mappings --

-- OS Clipboard --
-- register * is the "mouse-select-to-copy"
-- register + is the CTRL-C/CTRL-V
km("n", "<Leader>y", '"+y', opts)
km("n", "<Leader>Y", '"*y', opts)
km("v", "<Leader>y", '"+y', opts)
km("v", "<Leader>Y", '"*y', opts)
km("n", "<Leader>p", '"+p"', opts)
km("n", "<Leader>P", '"*p"', opts)

-- Save a file
vim.keymap.set("i", "wq", function()
  -- Save the file
  vim.cmd("write")
  -- Move to the right
  vim.cmd("normal l")
  -- Switch back to command mode after saving
  vim.cmd("stopinsert")
  -- Print the "File saved" message and the file path
  print("FILE SAVED: " .. vim.fn.expand("%:p"))
end, { desc = "Write current file and exit insert mode" })
