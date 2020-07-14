local version = 1.0

local Point = 'lib.Galaxy Entities.Point'

local Gangzone = { version = version }
function Gangzone:new(id, point1, point2, dwColor, altColor)
	local public = {}
		public.ID = id
		public.Point1 = point1
		public.Point2 = point2
		public.DwColor = dwColor
		public.AltColor = altColor

		public.Pickup = nil
		public.PickupText = ""

	function public:GetAll2dPoints()
		return point1, Point:new(point1.X, point2.Y, point1.Z), point2, Point:new(point2.X, point1.Y, point1.Z)
	end
	
	function public:GetAll3dPoints()
		return point1, Point:new(point1.X, point2.Y, point1.Z), Point:new(point2.X, point2.Y, point1.Z), Point:new(point2.X, point1.Y, point1.Z), Point:new(point1.X, point1.Y, point2.Z), Point:new(Point1.X, point2.Y, point2.Z), point2, Point:new(point2.X, point1.Y, point2.Z)
	end

	setmetatable(public, self)
	self.__index = self;
	 return public
end

return Gangzone