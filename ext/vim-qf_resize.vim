" Minimum height (in lines) for quickfix windows
    "let g:qf_resize_min_height


" Maximum height (in lines) for quickfix windows.
    let g:qf_resize_max_height = 8

" g:qf_resize_max_ratio
    let g:qf_resize_max_ratio = 5


"Resize/handle all qf windows when a window gets closed
    let g:qf_resize_on_win_close = 1

" Resize all quickfix/location list windows on the current tab page.
    nnoremap <silent> <c-w>= :wincmd =<cr>:QfResizeWindows<cr>

