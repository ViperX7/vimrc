" Indent Lines

" Enable Disable indent lines
    let g:indentLine_enabled = 0


"**************Indent Character Customisation******************

" Indent character  try (¦, ┆, ┊, |, │, ⎸,or ▏)
    " Same char for each level
        let g:indentLine_char = '┊'
    " Different for different levels
        "let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"***************************************************************


"*************************Colouruing**********************
" Enable Disable indent colouring (enable/disable) (1/0)
    let g:indentLine_setColors = 1
    
    " Enable above option to set values from below
        " Vim
            let g:indentLine_color_term = 239
        " GVim
            let g:indentLine_color_gui = '#535251'
        " none X terminal
            let g:indentLine_color_tty_light = 7 " (default: 4)
            let g:indentLine_color_dark = 1 " (default: 2)
        " Background (Vim, GVim)
            "let g:indentLine_bgcolor_term = 202
            "let g:indentLine_bgcolor_gui = '#FF5F00'

"***********************************************************




" I dont know what are bellow values
    "let g:indentLine_concealcursor = 'inc'
    "let g:indentLine_conceallevel = 2
    "let g:indentLine_setConceal = 0



"*****************************indentline binding**************************
"__________________________________________________________________________________________________________
"| Dont edit keymappings here edit from ~/.vim/configs/keybindings.vim below values are for refference only|
"|_________________________________________________________________________________________________________|

"Enable dissable indent lines
    noremap <leader>i :IndentLinesToggle<cr>
"*******************************************************************

