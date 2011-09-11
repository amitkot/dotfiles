" Vim syntax file
" Language: Android logcat for WeFi
" Maintainer: Amit Kotlovski
" Latest Revision: 6 Mar 2011

if exists("b:current_syntax")
  finish
endif

"Define colors
hi def LogF_color ctermfg=white guifg=white ctermbg=red guibg=red
hi def LogE_color ctermfg=red guifg=red
hi def LogW_color ctermfg=brown guifg=brown
hi def LogI_color ctermfg=blue guifg=blue
hi def LogD_color ctermfg=darkgreen guifg=darkgreen
hi def LogV_color ctermfg=gray guifg=gray

hi def Connect_color ctermbg=lightblue guibg=lightblue

syn match LogF 'F/.*' 
syn match LogE 'E/.*' 
syn match LogE '^.*ERROR/.*' 
syn match LogW 'W/.*' 
syn match LogW '^.*WARN/.*' 
syn match LogI 'I/.*' 
syn match LogI '^.*INFO/.*' 
syn match LogD 'D/.*'
syn match LogD '^.*DEBUG/.*' 
syn match LogV 'V/.*' 
syn match LogV '^.*VERBOSE/.*' 

syn match Connect '^.*Connect\:\:'

hi def link LogF LogF_color
hi def link LogE LogE_color
hi def link LogW LogW_color
hi def link LogI LogI_color
hi def link LogD LogD_color
hi def link LogV LogV_color


let b:current_syntax = "banana"

hi def link Connect Connect_color
