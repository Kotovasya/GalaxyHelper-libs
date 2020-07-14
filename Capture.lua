local version = 1.0

local LocalTimer = require 'lib.Galaxy Entities.LocalTimer'

local Capture = { version = version }
function Capture:new(defenderFraction, attackedFraction, caption)
	local public = {}
		public.DefenderFraction = defenderFraction
		public.AttackedFraction = attackedFraction
		public.Caption = caption
		public.Timer = LocalTimer:new(600, function() end, {})
		public.Timer:startTimer()

	setmetatable(public, self)
	self.__index = self;
	 return public
end

return Capture