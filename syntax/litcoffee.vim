" Language:   Literate CoffeeScript
" Maintainer: Michael Smith <michael@diglumi.com>
" URL:        https://github.com/mintplant/vim-literate-coffeescript
" License:    MIT

if exists('b:current_syntax') && b:current_syntax == 'litcoffee'
  finish
endif

runtime! syntax/ghmarkdown.vim
setf ghmarkdown

syn include @coffee syntax/coffee.vim

syn region inlineCoffee start='^    \|\t' end='$' contains=@coffee

let b:current_syntax = "litcoffee"

