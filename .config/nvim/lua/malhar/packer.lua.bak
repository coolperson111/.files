-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'navarasu/onedark.nvim'

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    
    use 'lukas-reineke/indent-blankline.nvim'

    use 'nvim-tree/nvim-tree.lua'

    use 'nvim-tree/nvim-web-devicons'

    use 'nvim-lualine/lualine.nvim'

    -- lsp
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    -- autocomplete
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer' -- lsp autocomplete
    use 'hrsh7th/cmp-path' -- lsp autocomplete
    use 'L3MON4D3/LuaSnip' -- snippet engine
    use 'saadparwaiz1/cmp_luasnip'

end)
