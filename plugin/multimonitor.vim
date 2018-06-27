"
" gdb-view.vim: Quick and dirty mechanism for opening a focused gdb view
"
"
" Author: Andres Rodriguez
"

" GDB View Open/Close status
let s:is_gdb_open = 0

" Open a gdb view
function! GdbViewOpen()
    if s:is_gdb_open == "1"
        echom "Debug session already open"
    else
        :tabedit %
        :Termdebug
        :Source
        :wincmd L
        :Gdb
        let s:is_gdb_open = 1
    endif
endfunc

" Close the gdb view
function! GdbViewClose()
    if s:is_gdb_open == "0"
        echom "No debug session open"
    else
        :call TermDebugSendCommand('quit')
        :sleep 100m
        :tabclose
        let s:is_gdb_open = 0
    endif
endfunc
"
" Close the gdb view
function! GdbViewToggle()
    if s:is_gdb_open == "0"
        :call GdbViewOpen()
    else
        :call GdbViewClose()
    endif
endfunc

command GdbViewOpen :call GdbViewOpen()
command GdbViewClose :call GdbViewClose()
command GdbViewToggle :call GdbViewToggle()
