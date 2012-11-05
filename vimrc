" Author: Luis Alberto Santana.
" Created: 2012/01/28
"
" This is the basic configuration of my vim editor.
" 
"
"
"
"

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
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()



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
set nowrap
set showmatch
set ruler


"""""""""""""""""""
" Identation
"""""""""""""""""""
" expandtab: replace tabs with spaces.
set expandtab

" softtabstop: vim will see sets of spaces as a tab. Usefull to delete a 'tab'
set softtabstop=4

" tabstop: the number of spaces a tab will be replaced for.
set tabstop=4



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
" Vim Omni Complete
"""""""""""""""""""""
filetype plugin on
set ofu=syntaxcomplete#Complete

set completeopt=menu,menuone,longest
set pumheight=10


"""""""""""""""""""""
" Super Tab
"""""""""""""""""""""
let g:SuperTabDefaultCompletionType='context'
let g:SuperTabMappingForward='<nul>'
let g:SuperTabMappingBackward='<s-nul>'

let g:SuperTabLongestHighlight=0




