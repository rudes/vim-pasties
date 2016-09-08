function! s:getmeachar()
    let char = 0

    while !char
	let char = getchar()
    endwhile

    return nr2char(char)
endfunction

function! SmarterRegisters()
    redir => registers
    silent registers
    redir END
    silent pedit [Registers]'
    wincmd P | wincmd J
    resize 10'
    silent let register_list = split(registers, "\n")
    exec append(0, register_list)
    com! -buffer -nargs=? SelectRegister
	    \ call s:whichRegister(<f-args>)
    nnoremap <silent> <buffer> q :silent bd!<CR>
    nnoremap <silent> <buffer> <CR> :exec 'SelectRegister '.getline('.')<CR>
endfunction

function! s:whichRegister(registerLine)
    let reg = a:registerLine[1]
    silent bd!
    return "a\<C-R>".reg
endfunction

inoremap <expr> <C-R> SmarterRegisters()

function! ShowPasties()
    registers

    return "\<C-R>".s:getmeachar()
endfunction
