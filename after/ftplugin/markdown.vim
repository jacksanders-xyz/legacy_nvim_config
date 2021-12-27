" LIBMODAL SCORE MODE


command -buffer ScoreModeEnter
let g:foo = 'bar'
lua require('mode-score')()

nnoremap <buffer> <Leader>7 <Cmd>ScoreModeEnter<CR>


