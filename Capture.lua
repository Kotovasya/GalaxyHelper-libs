local version = 1.0

local LocalTimer = require 'lib.Galaxy Entities.LocalTimer'

local Capture = { version = version }
function Capture:new(defenderFraction, attackedFraction, caption)
	local public = {}
		public.defenderFraction = defenderFraction
		public.attackedFraction = attackedFraction
		public.caption = caption
		public.timer = LocalTimer:new(600, function() end, {})
		public.timer:startTimer()

	setmetatable(public, self)
	self.__index = self;
	 return public
end

return Capture