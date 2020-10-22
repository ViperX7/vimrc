
"-------------------------------Vim Specific Key Mappings-----------------------------------

" Leader Key
"
    let mapleader=","       " leader is comma

" Movement
    " move vertically by visual line
        nnoremap j gj
        nnoremap k gk
    " move to beginning/end of line
        nnoremap B ^
        nnoremap E $
        " $/^ doesn't do anything
            nnoremap $ <nop>
            nnoremap ^ <nop>


" session management
    nnoremap <leader>so :OpenSession<Space>
    nnoremap <leader>ss :SaveSession<Space>
    nnoremap <leader>sd :DeleteSession<CR>
    nnoremap <leader>sc :CloseSession<CR>


"" Tabs
    nnoremap <Tab> gt
    nnoremap <S-Tab> gT
    nnoremap <silent> <S-t> :tabnew<CR>


" Command key optimisation : = ;
    " nnoremap ; :


" Set working directory
    nnoremap <leader>. :lcd %:p:h<CR>

    " Opens an edit command with the path of the currently edited file filled in
        noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
  
    " Open vsplit edit command with the path of the currently edited file filled 
        noremap <Leader>ev :vsplit <C-R>=expand("%:p:h") . "/" <CR>


    " Opens a tab edit command with the path of the currently edited file filled
        noremap <Leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

"Enable dissable indent lines
    noremap <leader>i :IndentLinesToggle<cr>

"" Split
    noremap <Leader>h :<C-u>split<CR>
    noremap <Leader>v :<C-u>vsplit<CR>


" Easy window navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

" " Use alt + hjkl to resize windows
"     nnoremap <M-j>    :resize -2<CR>
"     nnoremap <M-k>    :resize +2<CR>
"     nnoremap <M-h>    :vertical resize -2<CR>
"     nnoremap <M-l>    :vertical resize +2<CR>


" Visual mode Text Selection
    " Vmap for maintain Visual Mode after shifting > and <
        vmap < <gv
        vmap > >gv

        vmap <left> <gv
        vmap <right> >gv

    " Move visual block
        vnoremap Jv :m '>+1<CR>gv=gv
        vnoremap K :m '<-2<CR>gv=gv

        vnoremap <down> :m '>+1<CR>gv=gv
        vnoremap <up> :m '<-2<CR>gv=gv



" Dissable Arrow keys
    nnoremap <Left> :echoe "Use h"<CR>
    nnoremap <Right> :echoe "Use l"<CR>
    nnoremap <Up> :echoe "Use k"<CR>
    nnoremap <Down> :echoe "Use j"<CR>

" Code Folding
    " space open/closes folds
        nnoremap <space> za

" Searching
    " Turn off search highlightset ignorecase    " ignore case when searching
        nnoremap  <leader><space> :nohlsearch<CR>

" Copy/Paste/Cut
    if has('unnamedplus')
      set clipboard=unnamed,unnamedplus
    endif

    noremap YY "+y<CR>
    noremap <leader>p "+gP<CR>
    noremap XX "+x<CR>

    if has('macunix')
      " pbcopy for OSX copy/paste
      vmap <C-x> :!pbcopy<CR>
      vmap <C-c> :w !pbcopy<CR><CR>
    endif


"-------------------------------------------------------------------------------









"************************************ALE Keymapings****************************

" Map keys to navigate between lines with errors and warnings.
    nnoremap <leader>an :ALENextWrap<cr>
    nnoremap <leader>ap :ALEPreviousWrap<cr>
    nmap <silent> <leader>aj :ALENext<cr>
    nmap <silent> <leader>ak :ALEPrevious<cr>

" Enable dissable ALE quickly
    nmap <silent> <leader>aa :ALEToggle<cr>
    nmap <silent> <leader>af :ALEFix<cr>
    nmap <silent> <leader>al :ALELint<cr>:echo "Lint"<cr>

"*******************************************************************************





"*************************************FZF Keymapings****************************
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
nmap <leader>o :Files<cr>
nnoremap ; :Buffers<cr>
"******************************************************************************





"*****************Ranger Keybindings*****************************************
    if has('nvim')
        nnoremap <space>f :RnvimrToggle<CR>
        tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

        " Resize floating window by all preset layouts
        tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>

        " Resize floating window by special preset layouts
        tnoremap <silent> <M-l> <C-\><C-n>:RnvimrResize 1,8,9,11,5<CR>

        " Resize floating window by single preset layout
        tnoremap <silent> <M-y> <C-\><C-n>:RnvimrResize 6<CR>
    else
        " Dissable Default bindings
        let g:ranger_map_keys = 0
        map <space>ft :RangerNewTab<CR>
        map <space>f :Ranger<CR>
    endif
    "let g:NERDTreeHijackNetrw = 0   " add this line if you use NERDTree
    "let g:ranger_replace_netrw = 1  " open ranger when vim open a directory
"*****************************************************************************







" *************************************Multiple cursors keybindings******************
" Select n keywords with several keystrokes
    nnoremap <silent> <M-j> :MultipleCursorsFind <C-R>/<CR>
    vnoremap <silent> <M-j> :MultipleCursorsFind <C-R>/<CR>
"************************************************************************************



" *************************************COC keybindings******************
     "" Use tab for trigger completion with characters ahead and navigate.
     " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
     " other plugin before putting this into your config.
     inoremap <silent><expr> <TAB>
           \ pumvisible() ? "\<C-n>" :
           \ <SID>check_back_space() ? "\<TAB>" :
           \ coc#refresh()
     inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    
     function! s:check_back_space() abort
       let col = col('.') - 1
       return !col || getline('.')[col - 1]  =~# '\s'
     endfunction
    "
    " Use <c-space> to trigger completion.
    inoremap <silent><expr> <c-space> coc#refresh()

    " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
    " position. Coc only does snippet and additional edit on confirm.
    if exists('*complete_info')
      inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
    else
      imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
    endif

    " Use `[g` and `]g` to navigate diagnostics
    nmap <silent> [g <Plug>(coc-diagnostic-prev)
    nmap <silent> ]g <Plug>(coc-diagnostic-next)

    " GoTo code navigation.
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

    " Use K to show documentation in preview window.
    nnoremap <silent> K :call <SID>show_documentation()<CR>

    function! s:show_documentation()
      if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
      else
        call CocAction('doHover')
      endif
    endfunction

    " Highlight the symbol and its references when holding the cursor.
    autocmd CursorHold * silent call CocActionAsync('highlight')

    " Symbol renaming.
    nmap <leader>rn <Plug>(coc-rename)

    " Formatting selected code.
    " xmap <leader>f  <Plug>(coc-format-selected)
    " nmap <leader>f  <Plug>(coc-format-selected)
    vmap <leader>f  <Plug>(coc-format-selected)

    augroup mygroup
      autocmd!
      " Setup formatexpr specified filetype(s).
      autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
      " Update signature help on jump placeholder.
      autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup end

    " " Applying codeAction to the selected region.
    nmap <silent><leader>ca <Plug>(coc-codelens-action)
    vmap <silent><leader>a  <Plug>(coc-codeaction-selected)
    nmap <silent><leader>a  <Plug>(coc-codeaction)
    " " Example: `<leader>aap` for current paragraph
    " xmap <leader>a  <Plug>(coc-codeaction-selected)
    " nmap <leader>a  <Plug>(coc-codeaction-selected)
    "
    " " Remap keys for applying codeAction to the current line.
    " nmap <leader>ac  <Plug>(coc-codeaction)
    " Apply AutoFix to problem on the current line.
    nmap <leader>qf  <Plug>(coc-fix-current)

    " Use <TAB> for selections ranges.
    " NOTE: Requires 'textDocument/selectionRange' support from the language server.
    " coc-tsserver, coc-python are the examples of servers that support it.
    nmap <silent> <TAB> <Plug>(coc-range-select)
    xmap <silent> <TAB> <Plug>(coc-range-select)

    " Add `:Format` command to format current buffer.
    command! -nargs=0 Format :call CocAction('format')

    " Add `:Fold` command to fold current buffer.
    command! -nargs=? Fold :call     CocAction('fold', <f-args>)

    " Add `:OR` command for organize imports of the current buffer.
    command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

    " Add (Neo)Vim's native statusline support.
    " NOTE: Please see `:h coc-status` for integrations with external plugins that
    " provide custom statusline: lightline.vim, vim-airline.
    " set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

    " Mappings using CoCList:
    " Show all diagnostics.
    nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
    " Manage extensions.
    nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
    " Show commands.
    nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
    " Find symbol of current document.
    nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
    " Search workspace symbols.
    nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
    " Do default action for next item.
    nnoremap <silent> <space>j  :<C-u>CocNext<CR>
    " Do default action for previous item.
    nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
    " Resume latest coc list.
    nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
    
    " " Use <TAB> for selections ranges.
    " NOTE: Requires 'textDocument/selectionRange' support from the language server.
    " coc-tsserver, coc-python are the examples of servers that support it.
    nmap <silent> <TAB> <Plug>(coc-range-select)
    xmap <silent> <TAB> <Plug>(coc-range-select)
"************************************************************************************
"*****************************Coc plugins**********************************

" coc-template
    " :CocCommand template.template<cr> 
    " :CocCommand template.templateTop<cr> 
    nnoremap <leader>t :CocCommand template.templateTop<cr> 

" Explorer
    nmap <C-o> :CocCommand explorer<CR>
    autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif


" coc-yank
    nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

" vim-flutter

    nnoremap <leader>fa :FlutterRun<cr>
    nnoremap <leader>ft :FlutterVSplit<cr>
    nnoremap <leader>ff :DartFmt<cr>
    nnoremap <leader>fq :FlutterQuit<cr>
    nnoremap <leader>fr :FlutterHotReload<cr>
    nnoremap <leader>fR :FlutterHotRestart<cr>
    nnoremap <leader>fD :FlutterVisualDebug<cr>


" EasyMotion
let g:EasyMotion_do_mapping        = 0
let g:EasyMotion_do_shade          = 1
let g:EasyMotion_inc_highlight     = 0
let g:EasyMotion_landing_highlight = 0
let g:EasyMotion_off_screen_search = 0
let g:EasyMotion_smartcase         = 0
let g:EasyMotion_startofline       = 0
let g:EasyMotion_use_smartsign_us  = 1
let g:EasyMotion_use_upper         = 0
map <silent><space> <plug>(easymotion-s2)

" TagBar
nmap <F8> :TagbarToggle<CR>
