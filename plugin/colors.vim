" ~THEMES AND COLORS~
fun! ColorMyPencils()
    set background=dark
    let g:gruvbox_contrast_dark = 'hard'
    lua require('colorbuddy').colorscheme('gruvbuddy')
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline_theme='base16_gruvbox_dark_pale'
endfun
call ColorMyPencils()


" hi! link markdownH1 yellow
" hi! link markdownH2 {blue}
" hi! link markdownH3 {green}
" hi! link markdownH4 {pink}
" hi! link markdownH5 {orange}


