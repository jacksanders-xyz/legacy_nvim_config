local libmodal = require('libmodal')

local scoreMaps = require('jacksvimlua.SCORE_MODE_MODULES.scoreMaps')
local noteFloatMaps = require('jacksvimlua.SCORE_MODE_MODULES.noteFloatMaps')
local unMap = require('jacksvimlua.SCORE_MODE_MODULES.unMap')
local unMapNormal = require('jacksvimlua.SCORE_MODE_MODULES.unMapNormal')
local normalMap = require('jacksvimlua.SCORE_MODE_MODULES.normalMap')

local score_layer = libmodal.Layer.new(scoreMaps)
local note_float = libmodal.Mode.new('NOTE FLOAT', noteFloatMaps)
local modeIdentifier = 'score'
local api = vim.api

-- function talk()
--   vim.g.MI = modeIdentifier
--   api.nvim_command("echom g:MI")
--   -- api.nvim_command("echom g:foo")
-- end

function exit_SL()
  modeIdentifier = 'score'
  unMap(score_layer)
  -- normalMap()
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
  handlerFunction()
end
