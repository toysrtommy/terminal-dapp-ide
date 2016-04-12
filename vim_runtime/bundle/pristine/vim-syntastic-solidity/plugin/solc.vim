"============================================================================
"File:        go.vim
"Description: Check go syntax using 'gofmt -l' followed by 'go [build|test]'
"Maintainer:  Kamil Kisiel <kamil@kamilkisiel.net>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"
"============================================================================
"
" This syntax checker does not reformat your source code.
" Use a BufWritePre autocommand to that end:
"   autocmd FileType go autocmd BufWritePre <buffer> Fmt

if exists('g:loaded_syntastic_solidity_solc_checker')
    finish
endif
let g:loaded_syntastic_solidity_solc_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_solidity_solc_IsAvailable() dict
    return executable(self.getExec()) && executable('solc')
endfunction

function! SyntaxCheckers_solidity_solc_GetLocList() dict
    let makeprg = self.makeprgBuild({
        \ 'exe': 'solc',
        \ 'fname': expand('%:p',1),
        \ 'args': '',
        \ 'tail': '> ' . syntastic#util#DevNull() })

    let errorformat =
        \ '%f:%l:%c: %m,' .
        \ '%-G%.%#'

    let errors = SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat,
        \ 'cwd': expand('%:p:h', 1),
        \ 'defaults': {'type': 'e'} })
    if !empty(errors)
        return errors
    endif

    return errors
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'solidity',
    \ 'name': 'solc'})

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set sw=4 sts=4 et fdm=marker:
