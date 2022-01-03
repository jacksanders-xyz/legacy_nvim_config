return {
  ['w'] = 'bn',
  ['h'] = 'norm h',
  ['j'] = 'norm j',
  ['k'] = 'norm k',
  ['l'] = 'norm l',
  ['sos'] = ":lua staff_builder_func('SC_sO_1')",
  ['d'] = ":lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>:norm iSC_sO_1<cr>A<tab>',true,false,true),'m',true)",
  ['<Esc>'] = ':lua exit_SC()<CR>',
}
-- snippet SC_sO_1 "Opening staff constructor SINGLE STAFF"
-- snippet SC_sC_2 "Continuing staff constructor"
-- snippet SC_dO_3 "Opening staff double staff"
-- snippet SC_dC_4 "Continuing staff double staff"

