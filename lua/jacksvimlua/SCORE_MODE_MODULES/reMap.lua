-- local activeMap = require('jacksvimlua.SCORE_MODE_MODULES.scoreMaps')
local activeMap = {
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
    }
  }
-- function table.shallow_copy(t)
--   local t2 = {}
--   for k,v in pairs(t) do
--     t2[k] = v
--   end
--   return t2
-- end
-- local runningMap = table.shallow_copy(activeMap)
return function(score_layer)
     vim.g.MI = activeMap
     vim.api.nvim_command("echom g:MI")
  for key,value in pairs(activeMap['n']) do
     -- vim.g.MI = key
     -- vim.api.nvim_command("echom g:MI")
     score_layer:map('n', key, value['rhs'], {['noremap'] = true})
  end
end


-- score_layer:map('n', 'H', 'H', {['noremap'] = true})
-- running map is your 'blueprint' of the original maps you set (scoreMaps.lua). This way, you just grab a COPY and don't mutate the original
-- and can enter/renter as you like
