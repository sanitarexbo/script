script_name('allowbunnyhop')
script_description('Avoid bunnyhop punishment')
script_moonloader(021)
script_version_number(1)
script_author('inf')

local event = require 'lib.samp.events'

function main()
	repeat wait(0) until isSampAvailable()
	wait(-1)
end

function event.onSendPlayerSync(data)
	if bit.band(data.keysData, 0x28) == 0x28 then
		data.keysData = bit.bxor(data.keysData, 0x20)
	end
end
