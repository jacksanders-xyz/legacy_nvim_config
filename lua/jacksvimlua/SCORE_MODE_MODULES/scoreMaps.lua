return {
    ['n'] = {
      ['gg'] = {
        ['rhs'] = 'G',
        ['noremap'] = true,
      },
      ['G'] = {
        ['rhs'] = 'gg',
        ['noremap'] = true
      },
      ['f'] = {
        ['rhs'] = ':lua enter_NF()<CR>',
        ['noremap'] = true
      },
      ['t'] = {
        ['rhs'] = ':lua talk()<CR>',
        ['noremap'] = true,
        ['silent'] = true
      },
      ['<Esc>'] = {
        ['rhs'] = ':lua exit_SL()<CR>',
        ['noremap'] = true,
        ['silent'] = true
      },
      -- make a black note
      -- ['n'] = {
      --   ['rhs'] = 'i<C-v>Ue0a4<CR><Esc>',
      --   ['noremap'] = true,
      --   ['silent'] = true
      -- },
      ['n'] = {
        ['rhs'] = 'i<Esc>h',
        ['noremap'] = true,
        ['silent'] = true
      },
    }
}
