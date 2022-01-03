local libmodal = require('libmodal')
local unMap = require('jacksvimlua.SCORE_MODE_MODULES.unMap')
local reMap = require('jacksvimlua.SCORE_MODE_MODULES.reMap')
local scoreMaps = require('jacksvimlua.SCORE_MODE_MODULES.scoreMaps')
local staffConstructorMaps = require('jacksvimlua.SCORE_MODE_MODULES.staffConstructorMaps')
-- local noteFloatMaps = require('jacksvimlua.SCORE_MODE_MODULES.noteFloatMaps')
-- local unMapNormal = require('jacksvimlua.SCORE_MODE_MODULES.unMapNormal')
-- local normalMap = require('jacksvimlua.SCORE_MODE_MODULES.normalMap')
local table_copy = require('jacksvimlua.SCORE_MODE_MODULES.table_copy')
local runningMap = table_copy(scoreMaps)
local modeIdentifier = 'score'
local api = vim.api
local score_layer = libmodal.Layer.new(runningMap)
local note_float = libmodal.Mode.new('NOTE FLOAT', noteFloatMaps)
local staff_constructor = libmodal.Mode.new('STAFF', staffConstructorMaps)

-- function talk()
  -- vim.g.MI = runningMap
  -- api.nvim_command("echom g:MI")
-- end

-- local function t(str)
--     return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end

-- wrapper for replace termcodes
-- local t = function(str)
--   return vim.api.nvim_replace_termcodes(str, true, false, true)
-- end

function staff_builder_func(staff_instruction)
  -- "'<Esc>:norm iSC_sO_1<cr>A<tab>'"
  local string_prep = "lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>:norm i"..staff_instruction
  string_prep = string_prep.."<cr>A<tab>',true,false,true),'m',true)"
  api.nvim_command(string_prep)
end

function set_coordinates()
  api.nvim_command("set cursorline")
  api.nvim_command("set cursorcolumn")
end

function kill_coordinates()
  api.nvim_command("set nocursorline")
  api.nvim_command("set nocursorcolumn")
end

function exit_SL()
  unMap(score_layer)
  api.nvim_command("set colorcolumn=")
end

function re_entry_SL()
  reMap(score_layer)
  api.nvim_command("set colorcolumn=130")
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

function enter_SC()
  modeIdentifier = 'staff_constructor'
  set_coordinates()
  handlerFunction()
  kill_coordinates()
end

function exit_SC()
  staff_constructor:exit()
  modeIdentifier = 'score'
  handlerFunction()
end

function handlerFunction()
  if(modeIdentifier == 'score')
    then
      score_layer:enter()
  elseif(modeIdentifier == 'note_float')
    then
      note_float:enter()
  elseif(modeIdentifier == 'staff_constructor')
    then
      staff_constructor:enter()
    end
end

return function()
  -- talk()
  api.nvim_command("set colorcolumn=130")
  handlerFunction()
end
