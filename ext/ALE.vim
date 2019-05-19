
"********************************* Configuration for linters***********************************

  "Explict declearation to use code fixers
      let g:ale_linters = {
        \ 'javascript': ['prettier', 'eslint'],
        \ 'python': ['flake8', ]
        \ }

  "ALE automatically chooses linter according to file type  (enable/dissable this feature )
      let g:ale_linters_explicit = 0



"_________________________________________________________________________________________________
" Lint on actions 

    "On Text Change (always/never/insert/normal)
        let g:ale_lint_on_text_changed = 'always'
    " Time ALE waits before running linter in milliseconds
        "let g:ale_lint_delay = 300    " only available when lint_on_text_changed always/insert/norml

    " On enter buffer
      let g:ale_lint_on_enter = 0

    " On save buffer
      let g:ale_lint_on_save = 1
"_________________________________________________________________________________________________






"************************************************************************************************



"***********************************Configuration for fixers*************************************

" Explict declearation to use code fixers  (you need to install and decleare fixers mannually)
    let g:ale_fixers = {
        \   '*': ['remove_trailing_lines', 'trim_whitespace'],
        \   'javascript': ['eslint'],
        \   'python': ['autopep8', 'yapf'],
      \}


" Set this variable to 1 to fix files when you save them.
    let g:ale_fix_on_save = 0

"***************************************************************************************************




" Enable completion where available.
    " This setting must be set before ALE is loaded.
    "let g:ale_completion_enabled = 1


" Configure Markings You see next to errors and warnings
    let g:ale_sign_error = '✖'
    let g:ale_sign_warning = '➤➤'



"************************************Highlighting****************************************
" Set this in your vimrc file to disabling highlighting
     let g:ale_set_highlights = 0
     highlight ALEWarning ctermbg=DarkMagenta


    highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
    highlight clear ALEWarningSign " otherwise uses error bg color (typically red)

    " change or disable the highlights ALE uses




" Set this. Airline will handle the rest.
    let g:airline#extensions#ale#enabled = 1  



"**********************************Window listing**********************************

" Height of window  (default: 10)
" we are using automatic size using a plugin so settings below are not set
"    let g:ale_list_window_size = 10

" open list with errors on events (on_save/1/0)
    let g:ale_open_list = 'on_save'

" lsit window open even if no errors
"    let g:ale_keep_list_window_open = 1


"**********************************************************************************************




"***********************Statusline integration************************************************
    " statusline format
        let g:ale_statusline_format = ['X %d', '? %d', '']
    " Error message formatting
        " %linter% is the name of the linter that provided the message
        " %s is the error or warning message
            let g:ale_echo_msg_format = '%linter% : %s'
"***********************************************************************************************




augroup CloseLoclistWindowGroup
    autocmd!
    autocmd QuitPre * if empty(&buftype) | lclose | endif
  augroup END





"*************************************Keymapings*********************************************
"__________________________________________________________________________________________________________
"| Dont edit keymappings here edit from ~/.vim/configs/keybindings.vim below values are for refference only|
"|_________________________________________________________________________________________________________|

" Map keys to navigate between lines with errors and warnings.
"    nnoremap <leader>an :ALENextWrap<cr>
"    nnoremap <leader>ap :ALEPreviousWrap<cr>
"    nmap <silent> <leader>aj :ALENext<cr>
"    nmap <silent> <leader>ak :ALEPrevious<cr>
    
" Enable dissable ALE quickly
"    nmap <silent> <leader>aa :ALEToggle<cr>
"    nmap <silent> <leader>af :ALEFix<cr>
"    nmap <silent> <leader>al :ALELint<cr>:echo "Lint"<cr>
    
"***********************************************************************************************






     

  




  







