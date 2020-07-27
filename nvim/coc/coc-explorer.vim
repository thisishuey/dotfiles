let g:coc_explorer_global_presets = {
  \ 'floating': {
    \ 'floating-height': '0',
    \ 'floating-position': '0,0',
    \ 'floating-width': '0',
    \ 'open-action-strategy': 'sourceWindow',
    \ 'position': 'floating',
  \ },
\ }

nmap <leader>ef :CocCommand explorer --preset floating<CR>
