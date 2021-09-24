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

fun! IncrementSelection()
  norm! {jmt}kmb't
  :execute "normal! \<c-v>'b$\<esc>"
endfun
fun! DrawABox()
  call boxdraw#Draw("+o", [])
endfun
fun! BoxDrawParagraph()
  let @a = ''
  call IncrementSelection()
  norm! gv"ay'tyyp'byykp
  norm! 'tV'b>.'t
  :execute "normal! \<c-v>'bI \<esc>"
  norm! V'b$:
  call DrawABox()
  norm! 'tjlmi'bklme`i
  :execute "normal! \<c-v>`et|\<esc>"
  norm! gv"aP
  :execute "normal! \<c-v>}kklI  \<esc>"
  norm! gvlyf|
  :execute "normal! \<c-v>PA|\<esc>0w"
  :delmarks!
endfun
vnoremap <leader>bp :<C-u>call BoxDrawParagraph()<CR>
nnoremap <C-\> :delmarks!<CR>

" hello this is a little paragraph that i want to
" draw a box around. This paragraph happens to be
" staggared around multiple lines, this is
" different than the paragraph's that will be
" on one line, which will be hard, but i will do.

" hello this is a little
" draw a box around.
" staggared around multiple lines, this is
" different than the
" on one line, which will be hard


" https://vim.fandom.com/wiki/Replace_a_visual-block_of_text_with_another_such_block

" hello this is a little
" draw a box around.
" staggared around multiple lines, this is
" different than the
" on one line, which will be hard

" hello this is a little paragraph that i want to
" draw a box around. This paragraph happens to be
" staggared around multiple lines, this is
" different than the paragraph's that will be
" on one line, which will be hard, but i will do.

" fun! BoxDrawParagraph()
"   let @a = ''
"   call IncrementSelection()
  " :execute 'normal! \<C-v>}kk'
  " norm! yyp}kyyp
  " norm! vap{}k$:
  " :call DrawABox()
  " norm! {jjl
  " :execute "normal! \<C-v>}kk$hh"
  " norm! "aP
  " :execute "normal! \<C-v>}kkr|"
" endfun
