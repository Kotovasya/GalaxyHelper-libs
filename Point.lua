local version = 1.0

local Point = { version = version }
function Point:new(x, y, z)
	local public = {}
		public.x = x
		public.y = y
		public.z = z and z or 0

	setmetatable(public, self)
	self.__index = self
	 return public
end

return Point