local version = 1.0

local Point = { version = version }
function Point:new(x, y, z)
	local public = {}
		public.X = x
		public.Y = y
		public.Z = z and z or 0

	setmetatable(public, self)
	self.__index = self
	 return public
end

return Point