local version = 1.0

local Point = require 'lib.Galaxy Entities.Point'

local Gangzone = { version = version }
function Gangzone:new(id, point1, point2, dwColor, altColor)
	local public = {}
		public.id = id
		public.point1 = point1
		public.point2 = point2
		public.dwColor = dwColor
		public.altColor = altColor

		public.pickup = nil
		public.pickupText = ""

	function public:getAll2dPoints()
		return self.point1, Point:new(self.point1.x, self.point2.y, self.point1.z), self.point2, Point:new(self.point2.x, self.point1.y, self.point1.z)
	end
	
	function public:getAll3dPoints()
		return self.point1, Point:new(self.point1.x, self.point2.y, self.point1.z), Point:new(self.point2.x, self.point2.y, self.point1.z), Point:new(self.point2.x, self.point1.y, self.point1.z), Point:new(self.point1.x, self.point1.y, self.point2.z), Point:new(self.point1.x, self.point2.y, self.point2.z), self.point2, Point:new(self.point2.x, self.point1.y, self.point2.z)
	end

	setmetatable(public, self)
	self.__index = self;
	 return public
end

return Gangzone