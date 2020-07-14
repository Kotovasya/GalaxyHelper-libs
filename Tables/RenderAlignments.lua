local version = 1.0

local RenderAlignments = {
	[1] = "По левому краю",
	[2] = "По правому краю"
}

local versionMetatable = { __index = { version = version } }
setmetatable(RenderAlignments, versionMetatable)

return RenderAlignments