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
      ['rhs'] = ':lua trigger_NF()<CR>',
      ['noremap'] = true
    },
    ['<ESC>'] = {
      ['rhs'] = ':lua exit_score_layer()<CR>',
      ['noremap'] = true,
      ['silent'] = true
    },
  }
}



