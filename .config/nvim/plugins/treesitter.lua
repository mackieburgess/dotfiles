require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
        disable = {"python"}, -- TODO: check to see if this is still a problem
    },
    autotag = {
        enable = true,
    },
}
