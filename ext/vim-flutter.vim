" Enable Flutter menu
" call FlutterMenu()

" Some of these key choices were arbitrary;
" it's just an example.
" nnoremap <leader>fa :FlutterRun<cr>
" nnoremap <leader>fq :FlutterQuit<cr>
" nnoremap <leader>fr :FlutterHotReload<cr>
" nnoremap <leader>fR :FlutterHotRestart<cr>
" nnoremap <leader>fD :FlutterVisualDebug<cr>

" The Flutter executable path/name; defaults to 'flutter'.
    " g:flutter_command
" Whether to auto hot-reload when dart files are saved; defaults to 1.
    " g:flutter_hot_reload_on_save
" Whether to auto hot-restart when dart files are saved; defaults to 0.
    " g:flutter_hot_restart_on_save
" Automatically open __Flutter_Output__ when starting flutter; defaults to 1. Setting this to 0 requires set hidden in your vimrc.
    " g:flutter_show_log_on_run



"    :FlutterRun <args> - calls flutter run <args>
"    :FlutterHotReload - triggers a hot reload on the current Flutter process
"    :FlutterHotRestart - triggers a hot restart on the current Flutter process
"    :FlutterQuit - quits the current Flutter process
"    :FlutterDevices - opens a new buffer, and writes the output of flutter devices to it
"    :FlutterSplit - opens Flutter output in a horizontal split
"    :FlutterEmulators - Executes a flutter emulators process.
"    :FlutterEmulatorsLaunch - Executes a flutter emulators --launch process, with any provided arguments.
"    :FlutterVisualDebug - Toggles visual debugging in the running Flutter process.
"
"The following are self-explanatory:
"
"    :FlutterVSplit
"    :FlutterTab

