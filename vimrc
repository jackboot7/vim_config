" Author: Luis Alberto Santana.
" Created: 2012/01/28
"
" This is the basic configuration of my vim editor.
" 
"
"
"
"
"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>

"""""""""""""""""""""""""
" UTF8 Support
"""""""""""""""""""""""""
if has('multi_byte')
    scriptencoding utf-8
    set encoding=utf-8
end


"""""""""""""""""""""""""
" Pathogen plugin setup
"""""""""""""""""""""""""
execute pathogen#runtime_append_all_bundles()
execute pathogen#helptags()
execute pathogen#infect()



"""""""""""""""""""
" General 
"""""""""""""""""""
" Turn of the compatible mode with vi.
set nocompatible

" syntax on: Set the syntax highlighting on.
syntax on
set background=light

" Precede each line with its line number
set number
set numberwidth=3


""""""""""""""""""
" Text
""""""""""""""""""
set textwidth=0
"set nowrap
set showmatch
set ruler


"""""""""""""""""""
" Indentation
"""""""""""""""""""
" expandtab: replace tabs with spaces.
set expandtab

" softtabstop: vim will see sets of spaces as a tab. Usefull to delete a 'tab'
set softtabstop=4

" tabstop: the number of spaces a tab will be replaced for.
set tabstop=4

set shiftwidth=4

filetype plugin indent on

"""""""""""""""""""""
" Syntastic Settings.
"""""""""""""""""""""
let g:syntastic_mode_map = { 'mode': 'active', 
                            \ 'active_filetypes': [],
                            \ 'passive_filetypes': ['html'] }

let g:syntastic_quiet_warnings=1
let g:syntastic_enable_highlighting=1
let g:syntastic_auto_jump=0

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

set statusline+=\ %#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*



"""""""""""""""""""""
" Super Tab
"""""""""""""""""""""
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabMappingForward = '<nul>'
let g:SuperTabMappingBackward = '<s-nul>'

let g:SuperTabLongestHighlight = 0



"""""""""""""""""""""
" Vim Omni Complete
"""""""""""""""""""""
filetype plugin on
au FileType python set omnifunc=pythoncomplete#Complete

set ofu=syntaxcomplete#Complete

set completeopt=menu,menuone,longest
set pumheight=10

""""""""""""""""""""
" TagBar 
""""""""""""""""""""
" Mapping to the F9 key
nmap <F9> :TagbarToggle<CR>


" Based in the `Setting Up Go, Vim and Vim-go` from:
" http://dev.knacht.net/blog/2014/12/14/setting-up-go/

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
