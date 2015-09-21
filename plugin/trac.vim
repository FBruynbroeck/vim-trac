function! s:trac()
   let l:domain = exists('g:trac_domain') ? g:trac_domain : $TRAC_URL
   let l:id = expand("<cword>")
   if l:domain != ''
       execute "!open ".l:domain."/trac/ticket/".l:id
   endif
endfunction
command Trac :call <SID>trac()
let command = exists('g:trac_command') ? g:trac_command : '<C-x>'
execute 'map <silent> '.command.' :Trac<CR><CR>'
