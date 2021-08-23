" VIM WIKI
let g:vimwiki_ext2syntax= {'.md':'markdown','.markdown':'markdown','.mdown':'markdown' }
let g:vimwiki_list = [
      \{'path': '~/VimWiki', 'syntax':'markdown', 'ext':'.md' },
      \{'path':'~/VimWiki/jacks_brain', 'syntax':'markdown','ext':'.md' },
      \{'path':'~/VimWiki/work_content', 'syntax':'markdown','ext':'.md' }]
let g:vimwiki_markdown_link_ext = 1
let g:taskwiki_markup_syntax = 'markdown'
let g:markdown_folding = 1

" MAKE A LINK FROM THE BUFFER:
map <leader>wl "*PysiW)i[]<ESC>i

