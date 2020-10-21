let g:coc_explorer_global_presets = {
  \ 'floating': {
    \ 'open-action-strategy': 'sourceWindow',
    \ 'position': 'floating',
  \ },
\ }

nmap <leader>ef :CocCommand explorer --preset floating<CR>
