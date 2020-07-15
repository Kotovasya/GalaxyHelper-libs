local version = 1.0

local renderAlignments = {
	[1] = "По левому краю",
	[2] = "По правому краю"
}

local versionMetatable = { __index = { version = version } }
setmetatable(renderAlignments, versionMetatable)

return renderAlignments