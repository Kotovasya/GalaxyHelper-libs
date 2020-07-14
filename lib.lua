local scirpt_version = 1.0

local Lib = {}
function Lib:new(version, path, link)
	local public = {}
		public.version = version
		public.path = path
		public.link = link

	setmetatable(public, self)
	self.__index = self
	 return public
end

local Libs = {
	StandartFractionNames = Lib:new(1.1, 'lib.Galaxy Entities.Tables.StandartFractionNames', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/Tables/StandartFractionNames.lua"),
	StandartCaptionNames =  Lib:new(1.0, 'lib.Galaxy Entities.Tables.StandartCaptionNames', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/Tables/StandartCaptionNames.lua"),
	RenderAlignments = Lib:new(1.0, 'lib.Galaxy Entities.Tables.RenderAlignments', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/Tables/RenderAlignments.lua"),
	GangzoneColors = Lib:new(1.0, 'lib.Galaxy Entities.Tables.GangzoneColors', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/Tables/GangzoneColors.lua"),
	EventColors = Lib:new(1.0, 'lib.Galaxy Entities.Tables.EventColors', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/Tables/EventColors.lua"),
	Table = Lib:new(1.0, 'lib.Galaxy Entities.TableHelper', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/TableHelper.lua"),
	Fractions = Lib:new(1.0, 'lib.Galaxy Entities.Galaxy Fractions', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/Galaxy%20Fractions.lua"),
	Gangzone = Lib:new(1.0, 'lib.Galaxy Entities.Gangzone', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/Gangzone.lua"),
	Caption = Lib:new(1.0, 'lib.Galaxy Entities.Caption', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/Caption.lua"),
	Capture = Lib:new(1.0, 'lib.Galaxy Entities.Capture', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/Capture.lua"),
	Point = Lib:new(1.0, 'lib.Galaxy Entities.Point', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/Point.lua"),
	Member = Lib:new(1.0, 'lib.Galaxy Entities.Fraction Member', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/Fraction%20Member.lua"),
	SystemTimer = Lib:new(1.0, 'lib.Galaxy Entities.SystemTimer', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/SystemTimer.lua"),
	LocalTimer = Lib:new(1.0, 'lib.Galaxy Entities.LocalTimer', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper-libs/master/LocalTimer.lua"),
}

local versionMetatable = { __index = { scirpt_version = scirpt_version } }
setmetatable(Libs, versionMetatable)

return Libs