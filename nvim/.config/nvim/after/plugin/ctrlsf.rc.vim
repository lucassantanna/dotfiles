let g:ctrlsf_auto_focus = {
    \ "at": "done",
    \ "duration_less_than": 1000
    \ }

let g:ctrlsf_context = '-B 5 -A 3'

let g:ctrlsf_search_mode = 'async'

nmap <C-F>f <Plug>CtrlSFPrompt
