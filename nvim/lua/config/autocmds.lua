-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local o = vim.o
local a = vim.api

a.nvim_create_autocmd("BufEnter", {
  desc = "Disable automatic comment insertion",
  group = vim.api.nvim_create_augroup("AutoComment", {}),
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

o.number = true
a.nvim_create_autocmd(
    { "BufEnter", "FocusGained", "InsertLeave", "WinEnter" },
    { pattern = "*", command = "if &nu && mode() != 'i' | set rnu | endif", }
)
a.nvim_create_autocmd(
    { "BufLeave", "FocusLost", "InsertEnter", "WinLeave" },
    { pattern = "*", command = "if &nu | set nornu | endif", }
)
