" ~THEMES AND COLORS~
fun! ColorMyPencils()
    colorscheme gruvbox
    set background=dark

    let g:gruvbox_contrast_dark = 'hard'
    highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
    hi TelescopeBorder guifg=#5eacd
endfun
call ColorMyPencils()
