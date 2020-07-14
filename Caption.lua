local version = 1.0

local Caption = { version = version }

function Caption:new(id, gangzone)
	local public = {}
		public.ID = id
		public.Gangzone = gangzone
		public.Rollback = 0

	setmetatable(public, self)
	self.__index = self;
	 return public
end

return Caption