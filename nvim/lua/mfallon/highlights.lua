local onedark = {
    black           = "#282c34",
    white           = "#abb2bf",
    light_red       = "#e06c75",
    dark_red        = "#be5046",
    green           = "#98c379",
    light_yellow    = "#e5c07b",
    dark_yellow     = "#d19a66",
    blue            = "#61afef",
    magenta         = "#c678dd",
    cyan            = "#56b6c2",
    gutter_grey     = "#4b5263",
    cement_grey     = "#5c6370"
}

vim.api.nvim_set_hl(0, 'Whitespace',              { fg=onedark.gutter_grey})
vim.api.nvim_set_hl(0, 'LineNr',                  { fg=onedark.cement_grey})
vim.api.nvim_set_hl(0, 'TreesitterContextBottom', { underline=true, sp = Grey})
vim.api.nvim_set_hl(0, '@punctuation.delimiter',  { fg=onedark.green})
vim.api.nvim_set_hl(0, '@punctuation.bracket',    { fg=onedark.dark_red})

