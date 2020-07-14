local version = 1.0

local Member = { version = version }
function Member:new(nickname, rank)
	local public = {}
		public.Nickname = nickname
		public.Rank = rank						-- Fraction number rank
		
	setmetatable(public, self)
	self.__index = self;
	 return public
end

return Member