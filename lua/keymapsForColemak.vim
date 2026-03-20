" Colemak movement remaps (hjkl -> unei)
" Diagram:
"      u (up)    => k
"  n (left) e (down) i (right)

function! s:Map(modes, lhs, rhs) abort
  for l:mode in a:modes
    execute l:mode . 'noremap ' . a:lhs . ' ' . a:rhs
  endfor
endfunction

call s:Map(['n', 'v', 'x', 'o'], 'u', 'k')
call s:Map(['n', 'v', 'x', 'o'], 'U', 'K')
call s:Map(['n', 'v', 'x', 'o'], 'n', 'h')
call s:Map(['n', 'v', 'x', 'o'], 'N', 'H')
call s:Map(['n', 'v', 'x', 'o'], 'e', 'j')
call s:Map(['n', 'v', 'x', 'o'], 'E', 'J')
call s:Map(['n', 'v', 'x', 'o'], 'i', 'l')
call s:Map(['n', 'v', 'x', 'o'], 'I', 'L')

" K is now where N was originally
call s:Map(['n', 'v', 'x', 'o'], 'k', 'n')
call s:Map(['n', 'v', 'x', 'o'], 'K', 'N')

" H is now where I was originally (enter insert)
call s:Map(['n', 'v', 'x', 'o'], 'h', 'i')
call s:Map(['n', 'v', 'x', 'o'], 'H', 'I')

" L is now where U was originally
call s:Map(['n', 'v', 'x'], 'l', 'u')
call s:Map(['n', 'v', 'x'], 'L', 'U')
