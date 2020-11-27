" Removes trailing whitespaces from every line.
function! TrimTrailingWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfunction
autocmd BufWritePre <buffer> call TrimTrailingWhitespace()
