
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

    " Opens a tab edit command with the path of the currently edited file filled
        noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>


"" Split
    noremap <Leader>h :<C-u>split<CR>
    noremap <Leader>v :<C-u>vsplit<CR>


" Easy window navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l


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





"*************************************Denite Keymapings*************************
" === Denite shorcuts === "
"   ;         - Browser currently open buffers
"   <leader>o - Browse list of files in current directory
"   <leader>gg - Search current directory for occurences of given term and
"   close window if no results
"   <leader>g - Search current directory for occurences of word under cursor

" nmap ; :Denite buffer -split=floating -winrow=0<CR>
" nmap <leader>o :Denite file/rec -split=floating -winrow=1<CR>
nnoremap <leader>gg :<C-u>Denite grep:. -no-empty -mode=normal<CR>
nnoremap <leader>g :<C-u>DeniteCursorWord grep:. -mode=normal<CR>

"******************************************************************************


" "*************************************Deoplete Keymapings***********************
" " Atocomplete using tab
"     inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"     inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<tab>"
"
" "******************************************************************************



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




" *****************************neosnipets bindings******************************
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"


"*******************************************************************************






"*****************************indentline binding**************************

"Enable dissable indent lines
    noremap <leader>i :IndentLinesToggle<cr>
"*******************************************************************






"**************************NERDTree KeyBindings*****************************

    " Map a specific key or shortcut to open NERDTree?
        map <C-o> :NERDTreeToggle<CR>

    " Hit the right arrow to open a node:

        let NERDTreeMapActivateNode='l'
        " let NERDTreeMapActivateNode='<space>'
        " let NERDTreeMapActivateNode='<right>'

    " Locate the focused file in the tree with <Leader> + j:
        nmap <leader>j :NERDTreeFind<CR>

"***********************************************************************



"*****************Ranger Keybindings*****************************************
    " Dissable Default bindings
        let g:ranger_map_keys = 0
        map <leader>ft :RangerNewTab<CR>
        map <leader>f :Ranger<CR>

    "let g:NERDTreeHijackNetrw = 0   " add this line if you use NERDTree
    "let g:ranger_replace_netrw = 1  " open ranger when vim open a directory
"*****************************************************************************




"***********************Symentic highlighting Keybindings****************************
"Key binding for toggling
    nnoremap <Leader>s :SemanticHighlightToggle<cr>

"**************************************************************************************





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
    xmap <leader>f  <Plug>(coc-format-selected)
    nmap <leader>f  <Plug>(coc-format-selected)

    augroup mygroup
      autocmd!
      " Setup formatexpr specified filetype(s).
      autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
      " Update signature help on jump placeholder.
      autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup end

    " Applying codeAction to the selected region.
    " Example: `<leader>aap` for current paragraph
    xmap <leader>a  <Plug>(coc-codeaction-selected)
    nmap <leader>a  <Plug>(coc-codeaction-selected)

    " Remap keys for applying codeAction to the current line.
    nmap <leader>ac  <Plug>(coc-codeaction)
    " Apply AutoFix to problem on the current line.
    nmap <leader>qf  <Plug>(coc-fix-current)

    " Introduce function text object
    " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
    xmap if <Plug>(coc-funcobj-i)
    xmap af <Plug>(coc-funcobj-a)
    omap if <Plug>(coc-funcobj-i)
    omap af <Plug>(coc-funcobj-a)

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
    set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

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
"************************************************************************************

