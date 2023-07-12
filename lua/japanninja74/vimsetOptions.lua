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



-- General configuration for neovim, 
-- all the set options in vim are now called by vim.opt instead of set 

-- Set absolut line number
vim.opt.number		= true

-- Set relative numbers. Each line in your file is numbered relative 
-- to the cursor’s current position to show the distance to that line. 
-- The current line is marked 0, the ones above and below it are marked 
-- 1, and so on.
--
vim.opt.relativenumber	= false

-- Enable the use of the mouse.  Works for most terminals (xterm, MS-DOS,
-- Win32 win32-mouse, QNX pterm, *BSD console with sysmouse and Linux
-- console with gpm).  For using the mouse in the GUI, see gui-mouse.
-- The mouse can be enabled for different modes:
-- n       Normal mode and Terminal modes
-- v       Visual mode
-- i       Insert mode
-- c       Command-line mode
-- h       all previous modes when editing a help file
-- a       all previous modes
-- r       for hit-enter and more-prompt prompt
--
vim.opt.mouse		= "nvi"

-- Indent a new line the same amount as the line just typed
vim.opt.autoindent	= true

-- Number of columns occupied by a tab
vim.opt.tabstop		= 4

-- Number of spaces that a <Tab> counts for while performing editing
-- operations, like inserting a <Tab> or using <BS>
vim.opt.softtabstop	= 4

-- Converts tabs to white space
vim.opt.expandtab	= true

-- Number of spaces to use for each step of (auto)indent.
vim.opt.shiftwidth	= 4

-- Set vim colorscheme kanagawa-wave, kanagawa-dragon, kanagawa-lotus
vim.cmd('colorscheme kanagawa-wave')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.opt.termguicolors   = true

-- When on spell checking will be done.
-- The languages are specified with 'spelllang'
vim.opt.spell   = false
vim.opt.spelllang   = "en_us,es_mx"

-- A comma-separated list of screen columns that are
-- highlighted with ColorColumn hl-ColorColumn.  Useful to align
-- text.  Will make screen redrawing slower.
-- The screen column can be an absolute number, or a number preceded with
-- '+' or '-', which is added to or subtracted from 'textwidth'.
vim.opt.colorcolumn = "80"

-- Maximum width of text that is being inserted.  A longer line will be
-- broken after white space to get this width.  
-- A zero value disables this.
--
vim.opt.textwidth = 80
