" ******************************Legacy***************************************


filetype on
set nocompatible	            " Require for Vim coolness
set encoding=utf-8
set lazyredraw          " redraw only when we need to.

" History and Memory
    set hidden
    set history=1000         " remember more commands and search history
    set undolevels=1000      " use many muchos levels of undo




" *****************************Editor Visual Elements*************************

" Syntax Highlighting
    syntax on
    colorscheme space-vim-dark
    set background=dark         " tell vim what the background color looks like
    set termguicolors

" Line Numbering
    :set number relativenumber

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



" Code Folding
    set foldenable          " enable folding
    set foldlevelstart=10   " open folds less than 10 lines
    set foldnestmax=10      " 10 nested fold max
    " fold based on indent level
        set foldmethod=indent    "accepted: marker, manual, expr, syntax, diff, indent



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

    set iskeyword+=-          " treat dash separated words as a word text object"
    set conceallevel=0        " So that I can see `` in markdown files
    set clipboard=unnamedplus " Copy paste between vim and everything else

    au! BufWritePost $MYVIMRC source %  " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" **************************************************************************
" ******************************Tmux****************************************
autocmd VimEnter * silent !tmux set status off
autocmd VimLeave * silent !tmux set status on

"**************************************************************************

" Imports 
    " Plugins
        source ~/.vim/configs/plugins.vim
    " Key bindings
        source ~/.vim/configs/keybindings.vim
