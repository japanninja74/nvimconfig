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

-- Packer is a use-package inspired plugin/package management for Neovim.
-- Only required if you have packer configured as `opt`

-- Install packer if not already installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use) -- Packer can manage itself

    use {'wbthomason/packer.nvim'}

    -- telescope.nvim is a highly extendable fuzzy finder over lists. Built on 
    -- the latest awesome features from neovim core. Telescope is centered 
    -- around modularity, allowing for easy customization.
    use {'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        -- All the lua functions I don't want to write twice.
        requires = {
            {'nvim-lua/plenary.nvim'}
        }
    }

    -- The goal of nvim-treesitter is both to provide a simple and easy way to
    -- use the interface for tree-sitter in Neovim and to provide some basic 
    -- functionality such as highlighting based on it.
    use ('nvim-treesitter/nvim-treesitter',
        {run = ':TSUpdate'}
    )


    -- 
    --
    -- vim-startuptime
    use ('dstein64/vim-startuptime')
    -- View treesitter information directly in Neovim!
    use ('nvim-treesitter/playground')
    -- Lightweight alternative to context.vim implemented with nvim-treesitter.
    use ('nvim-treesitter/nvim-treesitter-context')
    -- Undotree visualizes the undo history and makes it easy to browse and 
    -- switch between different undo branches.
    use ('mbbill/undotree')
    -- Neomake is a plugin for Vim/Neovim to asynchronously run programs.
    use ('neomake/neomake')
    -- NeoVim dark colorscheme inspired by the colors of the famous painting 
    -- by Katsushika Hokusai.
    use ('rebelot/kanagawa.nvim')
    -- Smart and Powerful commenting plugin for neovim
    use {'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    -- A File Explorer For Neovim Written In Lua
    use {'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }
    -- The purpose of this plugin is to bundle all the "boilerplate code" 
    -- necessary to have nvim-cmp (a popular autocompletion plugin) and 
    -- nvim-lspconfig working together. And if you opt in, it can use 
    -- mason.nvim to let you install language servers from inside neovim.
    use {'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            -- Quickstart configs for Nvim LSP
            {'neovim/nvim-lspconfig'},             -- Required
            {
            -- Optional
            -- Portable package manager for Neovim that runs everywhere Neovim 
            -- runs. Easily install and manage LSP servers, DAP servers, 
            -- linters, and formatters.
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        -- Extension to mason.nvim that makes it easier to use lspconfig with 
        -- mason.nvim
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        -- A completion plugin for neovim coded in Lua.
        {'hrsh7th/nvim-cmp'},     -- Required
        -- nvim-cmp source for neovim builtin LSP client
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        -- Snippet Engine for Neovim written in Lua.
        {'L3MON4D3/LuaSnip'},     -- Required
    }
    }
   
    -- A plugin used to display all available luasnip in telescope
    use {
        "benfowler/telescope-luasnip.nvim",
        module = "telescope._extensions.luasnip",  -- if you wish to lazy-load
    }




end)
