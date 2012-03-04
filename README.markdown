ruby_run.vim
============

ruby_run.vim is a simple plugin for executing a ruby buffer or a selected block of ruby code.

Default mapping are:

   " key-mappings for comment line in normal mode
   noremap  <silent> <C-E> :call RubyRun()<CR>

   " key-mappings for range comment lines in visual <Shift-V> mode
   vnoremap <silent> <C-E> :call RubyRangeRun()<CR>

Installation
------------

If you don't have a preferred installation method, I recommend
installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and
then simply copy and paste:

    cd ~/.vim/bundle
    git clone git://github.com/stjernstrom/vim-ruby-run.git


