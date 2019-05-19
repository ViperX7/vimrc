" ******************************Legacy***************************************


filetype on
set nocompatible	            " Require for Vim coolness

"--------------------------------Performance-----------------------------------

set lazyredraw          " redraw only when we need to.

" History and Memory
    set hidden
    set history=1000         " remember more commands and search history
    set undolevels=1000      " use many muchos levels of undo
 
"------------------------------------------------------------------------------


" Call the .vimrc.plug file
 if filereadable(expand("~/.vim/vimrc.plug"))
     source ~/.vim/vimrc.plug
 endif

" ***************************************************************************


"-------------------------------Key Mappings-----------------------------------

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
    nnoremap ; :


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

"-------------------------------------------------------------------------------













" *****************************Editor Visual Elements*************************

" Syntax Highlighting
    syntax on
    colorscheme space-vim-dark

" Line Numbering
    set number
    

" Highlight current line
    set cursorline
" Highlight matching [{()}]
    set showmatch


" Characters per line limit
    " That verticle line
        set colorcolumn=80
" Highlight overflow
    highlight OverLength ctermbg=grey ctermfg=black guibg=#592929
    match OverLength /\%81v.\+/


" Display different types of white spaces.
    set list
    set listchars=tab:›\ ,trail:•,extends:#,nbsp:.


" Open new split panes to right and bottom, which feels more natural
    set splitbelow
    set splitright


" Display options
    set showmode
    " Show command in bottom bar
        set showcmd

" Fixes common backspace problems
    set backspace=indent,eol,start
" Status bar
    set laststatus=2



"*****************************************************************************




"**********************************Functionality******************************



" Indentation 
    filetype indent on  " load filetype-specific indent files
    set nowrap
    set smartindent
    set autoindent
    set copyindent    " copy the previous indentation on autoindenting
    " Spaces and Tabs
        set tabstop=4       " number of visual spaces per TAB fixed tab length
        set softtabstop=4   " number of spaces in tab when editing
        set expandtab       " tabs are spaces
        set shiftwidth=4
        set smarttab      " insert tabs on the start of a line according to
                          " shiftwidth, not tabstop

" Searching
    set incsearch   " Search as characters are entered
    set smartcase   " ignore case  search pattern is all lowercase, case-sensitive otherwise
    set hlsearch    " Highlight all matches
"    set ignorecase    " ignore case when searching
    " Turn off search highlightset ignorecase    " ignore case when searching
        nnoremap  <leader><space> :nohlsearch<CR>



" Code Folding
    set foldenable          " enable folding
    set foldlevelstart=10   " open folds less than 10 lines
    set foldnestmax=10      " 10 nested fold max
    " fold based on indent level
        set foldmethod=indent    "accepted: marker, manual, expr, syntax, diff, indent
    " space open/closes folds
        nnoremap <space> za

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


" Visual autocomplete for command menu
    set wildmenu

" Mouse
    " Display 5 lines above/below the cursor when scrolling with a mouse.
        set scrolloff=5
    " Speed up scrolling in Vim
        set ttyfast
    " Enable Mouse
        set mouse=a

" Autocomplete with dictionary words when spell check is on
    set complete+=kspell


" **********************************************************************************************







"***********************************************************************************************


" FZF
    source ~/.vim/ext/fzf.vim
" NERDTree
    source ~/.vim/ext/NERDTree.vim
" NERDCommenter
    " source ~/.vim/ext/NERDCommenter.vim
"NERDTreeGit
    source ~/.vim/ext/NERDTree_Git.vim
" Ranger
    source ~/.vim/ext/ranger.vim
" Multiple Cursors
    source ~/.vim/ext/vim_multiple_cursors.vim
" ALE
    source ~/.vim/ext/ALE.vim
    source ~/.vim/ext/vim-qf_resize.vim
" IndentLine
    source ~/.vim/ext/indentLine.vim
" vim-commentry
    source ~/.vim/ext/vim-commentry.vim
" Semantic-highlight
    source ~/.vim/ext/semantic-highlight.vim
" Neocompletion Cache
    source ~/.vim/ext/neocomplcache.vim
" Denite
    source ~/.vim/ext/denite.vim

