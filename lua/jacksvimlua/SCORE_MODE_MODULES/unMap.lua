local activeMap = require('jacksvimlua.SCORE_MODE_MODULES.scoreMaps')
return function(score_layer)
  for key,value in pairs(activeMap['n']) do
    score_layer:unmap('n', key)
  end
end

-- function table.shallow_copy(t)
--   local t2 = {}
--   for k,v in pairs(t) do
--     t2[k] = v
--   end
--   return t2
-- end
-- local runningMap = table.shallow_copy(activeScoreMap)

-- return function()
--   for key,value in pairs(activeScoreMap) do
--    vim.g.MI = activeScoreMap[key]['rhs']
--    vim.api.nvim_command("echom g:MI")
--   end
-- end

-- return function()
--   for key,value in pairs(activeScoreMap) do
--    score_layer:unmap('n', key)
--   end
-- end
