" NERDTree
    " Open a NERDTree automatically when vim starts up
    "    autocmd vimenter * NERDTree
        " Always open the tree when booting Vim, but don’t focus it:
            "autocmd VimEnter * wincmd p


    " Open a NERDTree automatically when vim starts up if no files were specified?
        autocmd StdinReadPre * let s:std_in=1
        autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    " Open NERDTree automatically when vim starts up on opening a directory

        autocmd StdinReadPre * let s:std_in=1
        autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

    " Map a specific key or shortcut to open NERDTree?
        map <C-o> :NERDTreeToggle<CR>

    " Close vim if the only window left open is a NERDTree?
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    " Set default arrows
        let g:NERDTreeDirArrowExpandable = '▸'
        let g:NERDTreeDirArrowCollapsible = '▾'


    " Hit the right arrow to open a node:

        let NERDTreeMapActivateNode='l'
        " let NERDTreeMapActivateNode='<space>'
        " let NERDTreeMapActivateNode='<right>'

    " Display hidden files:

        let NERDTreeShowHidden=1

    " Locate the focused file in the tree with <Leader> + j:

        nmap <leader>j :NERDTreeFind<CR>


    " Do not display some useless files in the tree:
        let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']

setlocal conceallevel=3
autocmd syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained



