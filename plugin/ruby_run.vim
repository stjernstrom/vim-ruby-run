" ------------------------------------------------------------------------------

if exists("g:loaded_ruby_run") || &cp
  finish
endif
let g:loaded_ruby_run="v0.1"
let s:keepcpo           = &cpo
set cpo&vim

" ------------------------------------------------------------------------------

" key-mappings for comment line in normal mode
noremap  <silent> <C-E> :call RubyRun()<CR>
" key-mappings for range comment lines in visual <Shift-V> mode
vnoremap <silent> <C-E> :call RubyRangeRun()<CR>

" ------------------------------------------------------------------------------

function! RubyRun()
  echo system("ruby -w ".expand("%:p"))
endfunction

function! RubyRangeRun() range
  let TempFile = tempname()
  silent execute ":'<,'>w " . TempFile
  echo system("ruby -w " . TempFile)
  silent execute "!rm -rf " . TempFile
endfunction

" ------------------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo

