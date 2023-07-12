--    _                               _        _      _____ _  _
--   (_) __ _ _ __   __ _ _ __  _ __ (_)_ __  (_) __ |___  | || |
--   | |/ _` | '_ \ / _` | '_ \| '_ \| | '_ \ | |/ _` | / /| || |_
--   | | (_| | |_) | (_| | | | | | | | | | | || | (_| |/ / |__   _|
--  _/ |\__,_| .__/ \__,_|_| |_|_| |_|_|_| |_|/ |\__,_/_/     |_|
-- |__/      |_|                            |__/
--
-- Neovim configuration
-- Based on configuration written by Tzamn
-- https://github.com/tzamn/nvimconfig

-- Shortcut configuration

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ft", vim.cmd.NvimTreeToggle)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
