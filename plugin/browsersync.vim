" browsersync.vim

function! StartBrowserSync()
    let current_file = expand('%:p:h')
    let cmd = "cd " . current_file . " && browser-sync start --server --files \"*.html, *.css\" &"
    call system(cmd)
    echo "BrowserSync started in the background."
endfunction

command! StartBrowserSync call StartBrowserSync()
