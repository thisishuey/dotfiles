let g:promptline_preset = {
  \ "a": [ promptline#slices#user() ],
  \ "b": [ promptline#slices#cwd() ],
  \ "c": [ promptline#slices#vcs_branch(), promptline#slices#git_status() ],
  \ "warn": [ promptline#slices#last_exit_code() ],
  \ "options": {
    \ "left_sections": [ "a", "b", "c" ],
    \ "right_sections": []
  \ }
\ }

let g:promptline_symbols = {
  \ 'left' : '',
  \ 'left_alt': '',
  \ 'right' : '',
  \ 'right_alt' : '',
  \ 'dir_sep' : '/'
\ }

let g:promptline_theme = "airline"
