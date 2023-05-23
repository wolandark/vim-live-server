" browsersync.vim

function! StartBrowserSync()
    let current_file = expand('%:p:h')
    let cmd = "cd " . current_file . " && browser-sync start --server --files \"*.html, *.css\" &"
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

" function! RIPBrowserSync()
"     let cmd = "killall browser-sync"
"     call system(cmd)
"     echo "RIP Browser-Sync"
" endfunction

command! StartBrowserSync call StartBrowserSync()
command! KillBrowserSync call KillBrowserSync()
command! -nargs=1 KillBrowserSyncOnPort call KillBrowserSyncOnPort(<f-args>)
" command! RIPBrowserSync call RIPBrowserSync()
