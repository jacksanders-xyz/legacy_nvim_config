local libmodal = require 'libmodal'

local scoreModeKeymap =
{
	['w'] = 'bn',
}

-- enter the mode
return function() libmodal.mode.enter('SCORE', scoreModeKeymap) end


