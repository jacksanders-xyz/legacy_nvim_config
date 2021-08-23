let g:startify_bookmarks = [
      \ {'c': '~/.config/nvim/init.vim'},
      \ {'z':'~/.zshrc'},
      \ {'t':'~/VimWiki/ToDo.md'}
      \ ]

function! s:tasks()
python3 << EOF
import subprocess
import json
import vim
tasks = json.loads(subprocess.check_output(['task', 'export']))
tasks = [{'line': task['description'],'cmd': ':TW ' + str(task['id'])} for task in tasks][:5]
vim.command("let tasklist = %s"% tasks)
EOF
    return tasklist
endfunction

let g:startify_lists = [
      \ { 'type': function('s:tasks'), 'header': ['   Tasks']      },
      \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ ]

