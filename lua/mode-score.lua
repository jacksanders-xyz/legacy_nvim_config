local libmodal = require('libmodal')
local modeIdentifier = 'score'

function exit_NF()
	note_floatMODE:exit()
end

function enter_NF()
  modeIdentifier = 'note_float'
  handlerFunction()
end

local scoreMAPS = {
  ['w'] = 'bn',
  ['n'] = ':lua enter_NF()',
}

local note_floatMAPS = {
  ['w'] = 'bn',
}

-- local score_MODE = libmodal.Mode.new('SCORE', score_MAPS)
function handlerFunction()
  if(modeIdentifier == 'score')
    then
      return libmodal.mode.enter('SCORE', scoreMAPS)
  elseif(modeIdentifier == 'note_float')
    then
       return libmodal.mode.enter('NOTE FLOAT', note_floatMAPS)
  end
end

return function()
  handlerFunction()
  -- libmodal.mode.enter('SCORE', score_MAPS)
  -- score_MODE:enter()
end


-- return function() libmodal.mode.enter('SCORE', scoreModeHandler) end

-- -- Imports
-- local libmodal = require('libmodal')

-- -- create a new layer.
-- local layer = libmodal.Layer.new({
-- 	['n'] = {
-- 		['gg'] = {
-- 			['rhs'] = 'G',
-- 			['noremap'] = true,
-- 		},
-- 		['G'] = {
-- 			['rhs'] = 'gg',
-- 			['noremap'] = true
-- 		},
-- 		['j'] = {
-- 			['rhs'] = 'l',
-- 			['noremap'] = true
-- 		},
-- 		['<ESC>'] = {
-- 			['rhs'] = ':lua LibmodalLayerExampleExit()',
-- 			['noremap'] = true
-- 		}
-- 	}
-- })

-- function LibmodalLayerExampleExit()
-- 	layer:exit()
-- end


-- return function() layer:enter() end





---- add a global function for exiting the mode.
--function LibmodalLayerExampleExit()
--	layer:exit()
--end

---- Add an additional mapping for `z`.
--layer:map('n', 'z', 'gg', {['noremap'] = true})

---- add an additional mapping for `q`.
--layer:map(
--	'n', 'q', ':lua LibmodalLayerExampleExit()<CR>',
--	{['noremap'] = true, ['silent']  = true}
--)

----[[ unmap `gg` and `G`. Notice they both return to their defaults,
--     rather than just not doing anything anymore. ]]
--layer:unmap('n', 'gg')
--layer:unmap('n', 'G')

---- If you wish to only change the mappings of a layer temporarily, you should use another layer. `map` and `unmap` permanently add and remove from the layer's keymap.







-- local remapHash = {
--   local libmodal = require('libmodal')
-- 	['n'] = { -- normal mode mappings
-- 		['gg'] = { -- remap `gg`
-- 			['rhs'] = 'G', -- map it to `G`
-- 			['noremap'] = true, -- don't recursively map.
-- 		},
-- 		['G'] = { -- remap `G`
-- 			['rhs'] = 'gg', -- map it to `gg`
-- 			['noremap'] = true -- don't recursively map.
-- 		}
-- 	}
-- }
-- local exitFunc = libmodal.layer.enter(remapHash)
-- return function() vim.loop.new_timer():start(5000, 0, vim.schedule_wrap(
-- 	function() exitFunc(); print('EXITED.') end
-- )) end



-- local libmodal = require('libmodal')
-- return function() libmodal.layer.enter({
-- 	['n'] = {
-- 		['gg'] = {
-- 			['rhs'] = 'G',
-- 		}
-- 	}
-- }) end


-- the real thing:
-- local libmodal = require 'libmodal'

-- local scoreModeKeymap =
-- {
-- 	['w'] = 'bn',
-- }

-- -- enter the mode
-- return function() libmodal.mode.enter('SCORE', scoreModeKeymap) end
