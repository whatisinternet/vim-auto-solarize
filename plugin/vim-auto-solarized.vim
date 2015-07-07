" vim-auto-solarize
" Maintainer Edvinas Klovas <edvinas@pnd.io>
" Author Josh Teeter <joshteeter@gmail.com>

if !exists("g:auto_solarize_start_dark")
    let g:auto_solarize_start_dark = '1850'
endif
if !exists("g:auto_solarize_start_light")
    let g:auto_solarize_start_light = '0700'
endif

function! AutoSolarize()"{
  let current_time = strftime("%H%M")
  let start_light = g:auto_solarize_start_light
  let start_dark = g:auto_solarize_start_dark


  if current_time > start_dark && current_time < start_light
    set background=dark
  else
    set background=light
  endif
  colorscheme solarized
endfunction"}

" AutoSolarize
call AutoSolarize()

" map togglebg key (requires vim-colors-solarized)
if !exists("g:auto_solarize_togglebg_key")
    let g:auto_solarize_togglebg_key = '<F8>'
endif
call togglebg#map(g:auto_solarize_togglebg_key)

