" -------- Keyboard mappings --------

" Box drawing
vnoremap +o :<C-u>call boxdraw#Draw("+o", [])<CR>
vnoremap +O :<C-u>call boxdraw#DrawWithLabel("+O", [])<CR>
vnoremap +[O :<C-u>call boxdraw#DrawWithLabel("+[O", [])<CR>
vnoremap +]O :<C-u>call boxdraw#DrawWithLabel("+]O", [])<CR>
vnoremap +{[O :<C-u>call boxdraw#DrawWithLabel("+{[O", [])<CR>
vnoremap +{]O :<C-u>call boxdraw#DrawWithLabel("+{]O", [])<CR>
vnoremap +}[O :<C-u>call boxdraw#DrawWithLabel("+}[O", [])<CR>
vnoremap +}]O :<C-u>call boxdraw#DrawWithLabel("+}]O", [])<CR>

" Labeling
vnoremap +c :<C-u>call boxdraw#DrawWithLabel("+c", [])<CR>
vnoremap +{c :<C-u>call boxdraw#DrawWithLabel("+{c", [])<CR>
vnoremap +}c :<C-u>call boxdraw#DrawWithLabel("+}c", [])<CR>
vnoremap +{[c :<C-u>call boxdraw#DrawWithLabel("+{[c", [])<CR>
vnoremap +{]c :<C-u>call boxdraw#DrawWithLabel("+{]c", [])<CR>
vnoremap +}[c :<C-u>call boxdraw#DrawWithLabel("+}[c", [])<CR>
vnoremap +}]c :<C-u>call boxdraw#DrawWithLabel("+}]c", [])<CR>
vnoremap +[c :<C-u>call boxdraw#DrawWithLabel("+[c", [])<CR>
vnoremap +]c :<C-u>call boxdraw#DrawWithLabel("+]c", [])<CR>
vnoremap +D :<C-u>echo boxdraw#debug()<CR>

" Line drawing
vnoremap +> :<C-u>call boxdraw#Draw("+>", [])<CR>
vnoremap +< :<C-u>call boxdraw#Draw("+<", [])<CR>
vnoremap +v :<C-u>call boxdraw#Draw("+v", [])<CR>
vnoremap +V :<C-u>call boxdraw#Draw("+v", [])<CR>
vnoremap +^ :<C-u>call boxdraw#Draw("+^", [])<CR>

vnoremap ++> :<C-u>call boxdraw#Draw("++>", [])<CR>
vnoremap ++< :<C-u>call boxdraw#Draw("++<", [])<CR>
vnoremap ++v :<C-u>call boxdraw#Draw("++v", [])<CR>
vnoremap ++V :<C-u>call boxdraw#Draw("++v", [])<CR>
vnoremap ++^ :<C-u>call boxdraw#Draw("++^", [])<CR>

vnoremap +- :<C-u>call boxdraw#Draw("+-", [])<CR>
vnoremap +_ :<C-u>call boxdraw#Draw("+_", [])<CR>
vnoremap +\| :<C-u>call boxdraw#Draw("+\|", [])<CR>

" Selection
vnoremap ao :<C-u>call boxdraw#Select("ao")<CR>
vnoremap io :<C-u>call boxdraw#Select("io")<CR>

fun! VisualSelection()
  norm! gv"ay
endfun

fun! DrawABox()
  call boxdraw#Draw("+o", [])
endfun

fun! BoxDrawSpecial()
  let @a = ''
  call VisualSelection()
  let theLabel = string(@a)
  echom theLabel
  norm! gv$
  call boxdraw#Draw("+O", [theLabel] + [])<CR>
endfun

fun! BoxDrawParagraph()
  let @a = ''
  call VisualSelection()
  norm! yyp}kyyp
  norm! vap{}k$:
  call DrawABox()
endfun
vnoremap <leader>bd :<C-u>call BoxDrawSpecial()<CR>
vnoremap <leader>bp :<C-u>call BoxDrawParagraph()<CR><CR>


" hello this is a little paragraph that i want to
" draw a box around. This paragraph happens to be
" staggared around multiple lines, this is
" different than the paragraph's that will be
" on one line, which will be hard, but i will do.



" hello this is a little paragraph that i want to
" draw a box around. This paragraph happens to be
" staggared around multiple lines, this is
" different than the paragraph's that will be
" on one line, which will be hard, but i will do.


" hello world^@hello world^@hello world^@hello world^@
" Label: helloworld'helloworld'
"

