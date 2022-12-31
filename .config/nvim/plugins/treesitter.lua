require('nvim-treesitter.configs').setup {
    -- yeah this is a lot
    ensure_installed = {
        "vim", "lua", "help",
        "gitcommit", "yaml", "toml", "json", "regex", "markdown",
        "html", "css", "scss", "javascript", "typescript", "tsx", "php",
        "python", "rust", "go", "java", "c", "haskell", "bash", "r",
        "latex", "bibtex"
    },

    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
    autotag = {
        enable = true,
    },
}
