function! s:getmeachar()
    let char = 0

    while !char
	let char = getchar()
    endwhile

    return nr2char(char)
endfunction

function! ShowPasties()
    registers

    return "\<C-R>".s:getmeachar()
endfunction
