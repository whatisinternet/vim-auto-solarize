if exists("g:loaded_auto_solarize_autoloader")
  finish
endif
let g:loaded_auto_solarize_autoload = 1

function! vim-auto-solarized#version()
  return '0.1.0'
endfunction
