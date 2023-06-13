require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed =  { "lua_ls" }
})

-- lsp keymappings
local on_attach = function(client,bufnr)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {buffer=0})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n","<space>oD",vim.diagnostic.open_float, {buffer=0})
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {buffer=0})
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set('n', '<space>r', vim.lsp.buf.rename, {buffer=0})
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {buffer=0})
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
        vim.lsp.buf.format { async = true }
    end, opts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities
}



-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
-- vim.api.nvim_create_autocmd('LspAttach', {
    -- group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    -- callback = function(ev)
        -- -- Enable completion triggered by <c-x><c-o>
        -- vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
-- 
        -- -- Buffer local mappings.
        -- -- See `:help vim.lsp.*` for documentation on any of the below functions
        -- local opts = { buffer = ev.buf }
        -- vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
        -- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        -- vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, {})
-- 
        -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        -- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        -- vim.keymap.set('n', '<space>wl', function()
            -- print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        -- end, opts)
        -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        -- vim.keymap.set('n', '<space>f', function()
            -- vim.lsp.buf.format { async = true }
        -- end, opts)
    -- end,
-- })
