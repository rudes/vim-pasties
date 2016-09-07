function! s:getmeachar()
    let char = 0

    while !char
	let char = getchar()
    endwhile

    return nr2char(char)
endfunction

" Maybe one day i'll figure this out.
"
" function! SmarterRegisters()
"     redir => registers
"     silent registers
"     redir END
"     exec 'normal! silent pedit [Registers]'
"     wincmd P | wincmd J
"     exec 'normal! :resize 10'
"     silent let register_list = split(registers, "\n")
"     exec append(0, register_list)
"     com! -buffer -nargs=? SelectRegister
" 		\ call s:whichRegister(<f-args>)
"     nnoremap <silent> <buffer> q :silent bd!<CR>
"     nnoremap <silent> <buffer> <CR> :exec 'SelectRegister '.getline('.')<CR>
" endfunction

" function! s:whichRegister(registerLine)
"     let reg = a:registerLine[1]
"     silent bd!
"     return "\<C-R>".reg
" endfunction

" inoremap <expr> <C-R> SmarterRegisters()

function! ShowPasties()
    registers

    return "\<C-R>".s:getmeachar()
endfunction
