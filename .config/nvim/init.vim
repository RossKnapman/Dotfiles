"""""""""""
" Plugins "
"""""""""""
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'godlygeek/tabular'
call plug#end()


""""""""""""""""
" VimTex Stuff "
""""""""""""""""
let mapleader = ","
let maplocalleader = ","
syntax enable
let g:vimtex_view_method = 'zathura'
let g:latex_view_general_viewer = 'zathura'
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_compiler_method = 'latexmk'


"""""""""""""""""""
" UltiSnips Stuff "
"""""""""""""""""""
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsUsePythonVersion=3
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]


""""""""""""""
" Misc Stuff "
""""""""""""""
" Allow mouse navigation
:set mouse=a
" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Unhighlight using spacebar (useful for when highlighting persists after search and replace)
:noremap <silent> <Space> :silent noh<Bar>echo<CR>
" Tab is four spaces
:set tabstop=4
:set shiftwidth=4
