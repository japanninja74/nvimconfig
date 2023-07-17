--    _                               _        _      _____ _  _
--   (_) __ _ _ __   __ _ _ __  _ __ (_)_ __  (_) __ |___  | || |
--   | |/ _` | '_ \ / _` | '_ \| '_ \| | '_ \ | |/ _` | / /| || |_
--   | | (_| | |_) | (_| | | | | | | | | | | || | (_| |/ / |__   _|
--  _/ |\__,_| .__/ \__,_|_| |_|_| |_|_|_| |_|/ |\__,_/_/     |_|
-- |__/      |_|                            |__/
--
-- Luasnippet configuration


-- downlaods honza snippets if not already downloaded
-- TODO: if I use a relative install_path the script does not work
local ensure_snippets = function()
    local fn = vim.fn
    local install_path = '/Users/dicarlo/.config/nvim/LuaSnippets/vim-snippets'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', 'https://github.com/honza/vim-snippets.git', install_path})
    end
end

ensure_snippets()

require("luasnip").config.set_config({ -- Setting LuaSnip config
-- Enable autotriggered snippets
  enable_autosnippets = true,
-- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})

-- Defines the set of keys used to work with snippets
-- Expand a snippet
vim.keymap.set({"i"}, "<C-K>", function() require("luasnip").expand() end, {silent = true})
-- Still not sure what this is doing
vim.keymap.set({"i", "s"}, "<C-L>", function() require("luasnip").jump( 1) end, {silent = true})
-- Still not sure what this is doing
vim.keymap.set({"i", "s"}, "<C-J>", function() require("luasnip").jump(-1) end, {silent = true})
-- Still not sure what this is doing
vim.keymap.set({"i", "s"}, "<C-E>", function()
	if require("luasnip").choice_active() then
		require("luasnip").change_choice(1)
	end
end, {silent = true})


-- Set the folder where snippets are located and lazy load (on request) them
require("luasnip.loaders.from_snipmate").lazy_load({paths = "/Users/dicarlo/.config/nvim/LuaSnippets/vim-snippets/snippets"})
