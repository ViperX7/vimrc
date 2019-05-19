" Deoplete



" enable/disable autocomplete by default
    "let b:deoplete_disable_auto_complete=1
    "let g:deoplete_disable_auto_complete=1


" autostart
    let g:deoplete#enable_at_startup = 1

"case options
    let g:deoplete#enable_ignore_case = 1
    let g:deoplete#enable_smart_case = 1
    let g:deoplete#enable_camel_case = 1
    
"i dont know what below values do
    let g:deoplete#enable_refresh_always = 1
    let g:deoplete#max_abbr_width = 0
    let g:deoplete#max_menu_width = 0
    "let g:deoplete#omni#input_patterns = get(g:,’deoplete#omni#input_patterns’,{})




"*************************************Deoplete Keymapings*********************************************
"__________________________________________________________________________________________________________
"| Dont edit keymappings here edit from ~/.vim/configs/keybindings.vim below values are for refference only|
"|_________________________________________________________________________________________________________|

" Atocomplete using tab
    "inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
    "inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<tab>"

"********************************************************************************************************

