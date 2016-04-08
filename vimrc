set runtimepath^=~/.vim_runtime
source ~/.vim_runtime/vimrc/basic.vim
source ~/.vim_runtime/vimrc/filetypes.vim
source ~/.vim_runtime/vimrc/plugins.vim
source ~/.vim_runtime/vimrc/extended.vim
colorscheme hybrid
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
let g:deoplete#enable_at_startup = 1
let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }



" Set scrolling behavior right. Don't overly aggressively scroll to center
set scrolloff=5
