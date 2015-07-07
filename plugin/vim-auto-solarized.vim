" vim-auto-solarize
" Maintainer Edvinas Klovas <edvinas@pnd.io>
" Author Josh Teeter <joshteeter@gmail.com>

" Set global configuration variables if there are not customized
if !exists("g:auto_solarize_start_dark")
    let g:auto_solarize_start_dark = '1850'
endif
if !exists("g:auto_solarize_start_light")
    let g:auto_solarize_start_light = '0700'
endif
if !exists("g:auto_solarize_togglebg_key")
    let g:auto_solarize_togglebg_key = '<F8>'
endif
if !exists("g:auto_solarize_check_on_save")
    let g:auto_solarize_check_on_save = 1
endif

function! AutoSolarize()"{
  let current_time = strftime("%H%M")
  let start_light = g:auto_solarize_start_light
  let start_dark = g:auto_solarize_start_dark


  if current_time >= start_light && current_time < start_dark
    set background=light
  elseif current_time >= start_dark
    set background=dark
  endif
  colorscheme solarized
endfunction"}

" auto_solarize
call AutoSolarize()

" map togglebg key (requires vim-colors-solarized)
call togglebg#map(g:auto_solarize_togglebg_key)

" make sure to AutoSolarize during save
if g:auto_solarize_check_on_save == 1 && has('autocmd')
    autocmd bufwritepost * call AutoSolarize()
endif
