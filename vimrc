" Author: Luis Alberto Santana.
" Created: 2012/01/28
"
" This is the basic configuration of my vim editor.
" 
"
"""""""""""""""""""""""""
" Pathogen plugin setup
"""""""""""""""""""""""""
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


"""""""""""""""""""
" General 
"""""""""""""""""""
" Turn of the compatible mode with vi.
set nocompatible

" syntax on: Set the syntax highlighting on.
syntax on

"""""""""""""""""""
" Identation
"""""""""""""""""""
" expandtab: replace tabs with spaces.
set expandtab

" softtabstop: vim will see sets of spaces as a tab. Usefull to delete a 'tab'
set softtabstop=4

" tabstop: the number of spaces a tab will be replaced for.
set tabstop=4


""""""""""""""""""
" Text
""""""""""""""""""
set textwidth=70

