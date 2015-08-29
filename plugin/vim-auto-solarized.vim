" vim-auto-solarize
" author: Edvinas Klovas <edvinas@pnd.io> 2015
" link: https://github.com/edvinasme/vim-auto-solarize
" license: MIT

" Set defaults for unset configuration variables for the plugin
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
  silent! colorscheme solarized

  let start_light = g:auto_solarize_start_light
  let start_dark = g:auto_solarize_start_dark

  " comparison operations are according to which start time is later
  if start_light > start_dark
    let inversed_start_light = start_dark
    let start_dark = start_light
    let start_light = inversed_start_light
  endif

  call SetBackground(start_dark, start_light)

endfunction"}

function! SetBackground(start_dark, start_light)"{
  let current_time = strftime("%H%M")

  if current_time >= a:start_light && current_time < a:start_dark
    set background=light
  else
    set background=dark
  endif

endfunction"}

" auto_solarize
call AutoSolarize()

" map togglebg key (requires vim-colors-solarized)
call togglebg#map(g:auto_solarize_togglebg_key)

" make sure to AutoSolarize during save
if g:auto_solarize_check_on_save == 1 && has('autocmd')
    autocmd bufwritepost * nested call AutoSolarize()
endif
