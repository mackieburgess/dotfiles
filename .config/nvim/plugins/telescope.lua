require('telescope').setup {
    defaults = {
        borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
        prompt_prefix = 'λ  ',
        selection_caret = '› ',
        file_ignore_patterns = { -- no more media files! or anything else!
            "%.png",
            "%.jpg",
            "%.jpeg",
            "%.pdf",
            "%.otf",
            "%.zip",
            "%.mkv",
            "%.mp4",
            ".DS_Store",
            ".CFUserTextEncoding",
            "^./Library/",
            "^./autoload/",
        },
    },
    pickers = {
        current_buffer_fuzzy_find = {
            sorting_strategy = 'ascending',
            layout_config    = { prompt_position = 'top' },
        },
        colorscheme = {
            enable_preview = true,
        }
    },
    extensions = {
        file_browser = {
            hidden = true,
            initial_mode = 'normal',
        },
    },
}

require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
