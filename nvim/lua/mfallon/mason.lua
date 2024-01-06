require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

require("mason-lspconfig").setup({
    -- list of servers for mason to install
    ensure_installed = {
        "lua_ls",
        -- "bashls",
        -- "svlangserver",
        -- "clangd"
    },
    -- auto-install configured servers (with lspconfig)
    automatic_installation = true, -- not the same as ensure_installed
})

