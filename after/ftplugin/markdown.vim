" LIBMODAL SCORE MODE
command! -buffer ScoreModeEnter lua require('mode-score')()
nnoremap <buffer> <Leader>7 <Cmd>ScoreModeEnter<CR>
