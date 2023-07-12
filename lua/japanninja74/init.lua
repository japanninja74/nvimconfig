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

-- packer is the plugin manager for nvim
require("japanninja74.packer")
-- generic vim setup options
require("japanninja74.vimsetOptions")
-- keyremap definitions
require("japanninja74.keyremap")
