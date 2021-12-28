" LIBMODAL SCORE MODE

" command! -buffer ScoreModeEnter lua require('mode-score2')()
" nnoremap <buffer> <Leader>7 <Cmd>ScoreModeEnter<CR>

" first try
fun! ScoreModeInit()
  if exists('g:score_was_triggered')
    lua re_entry_SL()
  endif
  if !exists('g:score_was_triggered')
    let g:score_was_triggered = 1
    lua require('mode-score')()
  endif
endfun
nnoremap <buffer> <Leader>7 :call ScoreModeInit()<CR>


" secondTry
