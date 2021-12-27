local activeMap = require('scoreMaps')
local activeScoreMap = activeMap['n']



return function(score_layer)
  for key,value in pairs(activeScoreMap) do
   score_layer:unmap('n', activeScoreMap[key]['rhs'])
  end
end


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
