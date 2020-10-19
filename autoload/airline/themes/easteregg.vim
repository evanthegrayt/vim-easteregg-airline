function! s:italic() abort
  return get(g:, 'easteregg_use_italics') ? 'italic' : ''
endfunction

""
" Color palette.
let s:gui_dark_gray = '#222222'
let s:cterm_dark_gray = 236
let s:gui_med_gray_hi = '#5e5e5e'
let s:cterm_med_gray_hi = 238
let s:gui_med_gray_lo = '#474545'
let s:cterm_med_gray_lo = 237
let s:gui_light_gray = '#a0a8b0'
let s:cterm_light_gray = 249
let s:gui_green = '#7cb37c'
let s:cterm_green = 108
let s:gui_blue = '#8fbfdc'
let s:cterm_blue = 110
let s:gui_purple = '#c7b6db'
let s:cterm_purple = 182
let s:gui_yellow = '#ccac85'
let s:cterm_yellow = 180
let s:gui_red = '#fa8989'
let s:cterm_red = 210
let s:gui_pink = '#de97ab'
let s:cterm_pink = 219

let g:airline#themes#easteregg#palette = {}

""
" Normal mode.
let s:N1 = [s:gui_dark_gray,   s:gui_green,        s:cterm_dark_gray,   s:cterm_green]
let s:N2 = [s:gui_light_gray,  s:gui_med_gray_lo,  s:cterm_light_gray,  s:cterm_med_gray_lo]
let s:N3 = [s:gui_green,       s:gui_med_gray_hi,  s:cterm_green,       s:cterm_med_gray_hi]

let g:airline#themes#easteregg#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#easteregg#palette.normal_modified = {
      \   'airline_c': [s:gui_yellow, s:gui_med_gray_hi, s:cterm_yellow, s:cterm_med_gray_hi, ''],
      \ }

""
" Insert mode.
let s:I1 = [s:gui_med_gray_hi,  s:gui_blue,         s:cterm_med_gray_hi,  s:cterm_blue]
let s:I3 = [s:gui_blue,         s:gui_med_gray_hi,  s:cterm_blue,         s:cterm_med_gray_hi]

let g:airline#themes#easteregg#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:I3)
let g:airline#themes#easteregg#palette.insert_modified = copy(g:airline#themes#easteregg#palette.normal_modified)
let g:airline#themes#easteregg#palette.insert_paste = {
      \   'airline_a': [s:gui_dark_gray, s:gui_yellow, s:cterm_dark_gray, s:cterm_yellow, ''],
      \ }

""
" Replace mode.
let g:airline#themes#easteregg#palette.replace = {
      \   'airline_a': [s:gui_dark_gray, s:gui_red, s:cterm_dark_gray, s:cterm_red, ''],
      \   'airline_c': [s:gui_red, s:gui_med_gray_hi, s:cterm_red, s:cterm_med_gray_hi, ''],
      \ }
let g:airline#themes#easteregg#palette.replace_modified = copy(g:airline#themes#easteregg#palette.insert_modified)

""
" Visual mode.
let s:V1 = [s:gui_dark_gray,  s:gui_pink,         s:cterm_dark_gray,  s:cterm_pink]
let s:V3 = [s:gui_pink,       s:gui_med_gray_hi,  s:cterm_pink,       s:cterm_med_gray_hi]

let g:airline#themes#easteregg#palette.visual = airline#themes#generate_color_map(s:V1, s:N2, s:V3)
let g:airline#themes#easteregg#palette.visual_modified = copy(g:airline#themes#easteregg#palette.insert_modified)

""
" Inactive window.
let s:IA = [s:gui_light_gray, s:gui_med_gray_hi, s:cterm_light_gray, s:cterm_med_gray_hi, '']

let g:airline#themes#easteregg#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#easteregg#palette.inactive_modified = {
      \   'airline_c': [s:gui_yellow, '', s:cterm_yellow, '', ''],
      \ }

""
" CtrlP.
if !get(g:, 'loaded_ctrlp', 0) | finish | endif
let g:airline#themes#easteregg#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \   [ s:gui_yellow, s:gui_med_gray_hi, s:cterm_yellow, s:cterm_med_gray_hi, '' ] ,
      \   [ s:gui_yellow, s:gui_med_gray_lo, s:cterm_yellow, s:cterm_med_gray_lo, '' ] ,
      \   [ s:gui_dark_gray, s:gui_green, s:cterm_dark_gray, s:cterm_green, 'bold' ] 
      \ )
