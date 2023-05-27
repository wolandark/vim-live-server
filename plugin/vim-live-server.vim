" vim-live-server.vim

" A live web server for vim
" By Wolandark
" https://github.com/wolandark/browser-sync/

function! StartBrowserSync()
    let cmd = "browser-sync start --server --cwd=" . getcwd() . " --files \"*.html, *.css\" &"
    call system(cmd)
    echo "BrowserSync started in the background."
endfunction

function! StartBrowserSyncOnPort(port)
    let cmd = "browser-sync start --server --cwd=" . getcwd() . " --port=" . a:port . " --files \"*.html, *.css\" &"
    call system(cmd)
    echo "BrowserSync started in the background."
endfunction

function! KillBrowserSync()
    let port = systemlist('lsof -i :3000 -t')[0]
    if empty(port)
        echo "No BrowserSync server found on port 3000."
    else
        let cmd = "kill " . port
        call system(cmd)
        echo "BrowserSync server on port 3000 terminated."
    endif
endfunction

function! KillBrowserSyncOnPort(port)
    let cmd = "kill $(lsof -i :" . a:port . " -t)"
    call system(cmd)
    echo "BrowserSync server on port " . a:port . " terminated."
endfunction

command! StartBrowserSync call StartBrowserSync()
command! -nargs=1 StartBrowserSyncOnPort call StartBrowserSyncOnPort(<f-args>)
command! KillBrowserSync call KillBrowserSync()
command! -nargs=1 KillBrowserSyncOnPort call KillBrowserSyncOnPort(<f-args>)
