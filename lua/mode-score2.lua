local libmodal = require('libmodal')
local scoreMaps = require('jacksvimlua.SCORE_MODE_MODULES2.scoreMaps')
local noteFloatMaps = require('jacksvimlua.SCORE_MODE_MODULES2.noteFloatMaps')
local api = vim.api

function setCoordinate()
  -- api.nvim_command('set cursorline')
  -- api.nvim_command('set cursorcolumn')
end

function killCoordinate()
  -- api.nvim_command('set nocursorline')
  -- api.nvim_command('set nocursorcolumn')
end

function enter_SM()
  setCoordinate()
  api.nvim_set_var('scoreModeExit', 0)
  libmodal.mode.enter('SCORE', scoreMaps, true)
end

function exit_SM()
  killCoordinate()
  api.nvim_command('let g:scoreModeExit = 1')
end

function handlerFunction()
  enter_SM()
end

return function()
  handlerFunction()
end

