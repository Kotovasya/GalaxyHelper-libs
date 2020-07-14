local version = 1.0

local Table = { version =  version }
function Table:new()
	local public = {}
		function public:insert(list, key, value)
			if list[key] ~= null then return end
			list[key] = value
			return
		end

		function public:indexOf(list, value)
			for k,v in pairs(list) do 
				if v == value then
					return k
				end
			end
			return nil
		end

		function public:deepIndexOf(list, value)
			for k, v in pairs(list) do
				if type(value) ~= 'table' and type(v) == 'table' then 
					n = self:deepIndexOf(v, value)
					if n ~= nil then
						return {Key = k, Value = v}
					end
				elseif v == value then
					return {Key = k, Value = v}
				end
			end
			return nil
		end

	setmetatable(public, self)
	self.__index = self;
	 return public
end

return Table:new()