local libmodal = require('libmodal')
local unMap = require('jacksvimlua.SCORE_MODE_MODULES.unMap')
local reMap = require('jacksvimlua.SCORE_MODE_MODULES.reMap')
local scoreMaps = require('jacksvimlua.SCORE_MODE_MODULES.scoreMaps')
local noteFloatMaps = require('jacksvimlua.SCORE_MODE_MODULES.noteFloatMaps')
local unMapNormal = require('jacksvimlua.SCORE_MODE_MODULES.unMapNormal')
local normalMap = require('jacksvimlua.SCORE_MODE_MODULES.normalMap')
local score_layer = libmodal.Layer.new(scoreMaps)
local note_float = libmodal.Mode.new('NOTE FLOAT', noteFloatMaps)
local modeIdentifier = 'score'
local api = vim.api

-- function talk()
  -- vim.g.MI = runningMap
  -- api.nvim_command("echom g:MI")
-- end

function exit_SL()
  unMap(score_layer)
end

function re_entry_SL()
  reMap(score_layer)
end

function exit_NF()
  note_float:exit()
  modeIdentifier = 'score'
  handlerFunction()
end

function enter_NF()
  modeIdentifier = 'note_float'
  handlerFunction()
end

function handlerFunction()
  if(modeIdentifier == 'score')
    then
      score_layer:enter()
  elseif(modeIdentifier == 'note_float')
    then
      note_float:enter()
    end
end

return function()
  -- talk()
  handlerFunction()
end
