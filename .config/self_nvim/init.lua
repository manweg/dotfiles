require("config.lazy")
require("config.set")
require("config.remap")

require('lazy').setup({
    'folke/lazydev.nvim',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
})

require('lazydev').setup({
    lsp = {
        ensure_installed = { 'pyright', 'tsserver', 'yamlls' },
    },
    cmp = {
        enabled = true,
        sources = {
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
        },
    },
})


