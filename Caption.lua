local version = 1.0

local Caption = { version = version }

function Caption:new(id, gangzone)
	local public = {}
		public.id = id
		public.gangzone = gangzone
		public.rollback = 0

	setmetatable(public, self)
	self.__index = self;
	 return public
end

return Caption