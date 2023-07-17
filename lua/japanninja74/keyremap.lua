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

-- set the leader key to space
vim.g.mapleader = " "

-- shortcat to open filetree
vim.keymap.set("n", "<leader>ft", vim.cmd.NvimTreeToggle)

--In visual mode change a row down
--vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--In visual mode move a row up
--vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
