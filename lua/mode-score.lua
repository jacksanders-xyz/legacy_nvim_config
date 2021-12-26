local libmodal = require('libmodal')
local scoreMaps = require('jacksvimlua.scoreMaps')
local noteFloatMaps = require('jacksvimlua.noteFloatMaps')
local score_layer = libmodal.Layer.new(scoreMaps)
local note_float = libmodal.Mode.new('NOTE FLOAT', noteFloatMaps)
local modeIdentifier = 'score'

function exit_score_layer()
  score_layer:exit()
end

function trigger_NF()
  modeIdentifier = 'note_float'
  handlerFunction()
end

function exit_NF()
  modeIdentifier = 'score'
  note_float:exit()
end

function handlerFunction()
  if(modeIdentifier == 'score')
    then
      return score_layer:enter()
  elseif(modeIdentifier == 'note_float')
    then
      return note_float:enter()
  end
end

return function()
  handlerFunction()
end


-- local fooModeCombos = {
-- 	[''] = 'echom "You cant exit using escape."',
-- 	['q'] = 'let g:fooModeExit = 1'
-- }

-- -- Tell the mode not to exit automatically.
-- vim.api.nvim_set_var('fooModeExit', 0)
