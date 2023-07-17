--    _                               _        _      _____ _  _
--   (_) __ _ _ __   __ _ _ __  _ __ (_)_ __  (_) __ |___  | || |
--   | |/ _` | '_ \ / _` | '_ \| '_ \| | '_ \ | |/ _` | / /| || |_
--   | | (_| | |_) | (_| | | | | | | | | | | || | (_| |/ / |__   _|
--  _/ |\__,_| .__/ \__,_|_| |_|_| |_|_|_| |_|/ |\__,_/_/     |_|
-- |__/      |_|                            |__/
--
-- telescope configuration


local telescope = require('telescope.builtin')

    vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
    vim.keymap.set('n', '<leader>fp', telescope.git_files, {})
    vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
    vim.keymap.set('n', '<leader>fw', telescope.grep_string, {})
    vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
    vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})
-- Extension for telescope to select luasnippet
-- it can be used with :Telescope luasnip
require('telescope').load_extension('luasnip')

