" NERDCommenter
    " Add spaces after comment delimiters by default
        let g:NERDSpaceDelims = 1

    " Use compact syntax for prettified multi-line comments
        let g:NERDCompactSexyComs = 1

    " Align line-wise comment delimiters flush left instead of following code indentation
        let g:NERDDefaultAlign = 'left'

    " Set a language to use its alternate delimiters by default
        let g:NERDAltDelims_java = 1

    " Add your own custom formats or override the defaults
        let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

    " Allow commenting and inverting empty lines (useful when commenting a region)
        let g:NERDCommentEmptyLines = 1

    " Enable trimming of trailing whitespace when uncommenting
        let g:NERDTrimTrailingWhitespace = 1

    " Enable NERDCommenterToggle to check all selected lines is commented or not 
        let g:NERDToggleCheckAllLines = 1

    " The Following are already enabled default bindings***************

    " Comment out the current line or text selected in visual mode.
        "[count]<leader>cc |NERDComComment|
    " Same as cc but forces nesting.
        "[count]<leader>cn |NERDComNestedComment|
    " Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
        "[count]<leader>c<space> |NERDComToggleComment|
    " Comments the given lines using only one set of multipart delimiters.
        "[count]<leader>cm |NERDComMinimalComment|
    " Toggles the comment state of the selected line(s) individually.
        "[count]<leader>ci |NERDComInvertComment|
    " Comments out the selected lines with a pretty block formatted layout.
        "[count]<leader>cs |NERDComSexyComment|
    " Same as cc except that the commented line(s) are yanked first.
        "[count]<leader>cy |NERDComYankComment|
    " Comments the current line from the cursor to the end of line.
        "<leader>c$ |NERDComEOLComment|
    " Adds comment delimiters to the end of line and goes into insert mode between them.
        "<leader>cA |NERDComAppendComment|
    " Adds comment delimiters at the current cursor position and inserts between. Disabled by default.
        "|NERDComInsertComment|
    " Switches to the alternative set of delimiters.
        "<leader>ca |NERDComAltDelim|
    " Same as |NERDComComment| except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb).
        "[count]<leader>cl
        "[count]<leader>cb |NERDComAlignedComment|
    " Uncomments the selected line(s).
        "[count]<leader>cu |NERDComUncommentLine|


