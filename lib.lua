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
	StandartFractionNames = Lib:new(1.1, 'lib.Galaxy Entities.Tables.StandartFractionNames', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/Tables/StandartFractionNames.lua?token=AHZUJCDCZCEWL7I5DOSFUN27A5O2Y"),
	StandartCaptionNames =  Lib:new(1.0, 'lib.Galaxy Entities.Tables.StandartCaptionNames', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/Tables/StandartCaptionNames.lua?token=AHZUJCAOM44ABGWSS5OPCF27ASNA4"),
	RenderAlignments = Lib:new(1.0, 'lib.Galaxy Entities.Tables.RenderAlignments', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/Tables/RenderAlignments.lua?token=AHZUJCF7D647OQFVFCLBP4C7ASNF6"),
	GangzoneColors = Lib:new(1.0, 'lib.Galaxy Entities.Tables.GangzoneColors', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/Tables/GangzoneColors.lua?token=AHZUJCDPURLILOZXBYKBLOK7ASNGU"),
	EventColors = Lib:new(1.0, 'lib.Galaxy Entities.Tables.EventColors', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/Tables/EventColors.lua?token=AHZUJCET22Y23MLDFXJ6ZQ27ASNHU"),
	Table = Lib:new(1.0, 'lib.Galaxy Entities.TableHelper', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/TableHelper.lua?token=AHZUJCAVESWNXCN3XD6D3WS7ASNQG"),
	Fractions = Lib:new(1.0, 'lib.Galaxy Entities.Galaxy Fractions', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/Galaxy%20Fractions.lua?token=AHZUJCC5FD3VSZRHU77DS527ASNLE"),
	Gangzone = Lib:new(1.0, 'lib.Galaxy Entities.Gangzone', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/Gangzone.lua?token=AHZUJCA6WRYD2UO5RO65CAK7ASNMG"),
	Caption = Lib:new(1.0, 'lib.Galaxy Entities.Caption', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/Caption.lua?token=AHZUJCHYQRL5ZGUK5J7NZGC7ASNIQ"),
	Capture = Lib:new(1.0, 'lib.Galaxy Entities.Capture', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/Capture.lua?token=AHZUJCDWKTNN3TQ4MKTQT5C7ASNJO"),
	Point = Lib:new(1.0, 'lib.Galaxy Entities.Point', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/Point.lua?token=AHZUJCFXDQAHZ7ZTQOAVDEK7ASNN4"),
	Member = Lib:new(1.0, 'lib.Galaxy Entities.Fraction Member', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/Fraction%20Member.lua?token=AHZUJCAIEKNK2CAIEXXRORK7ASNKI"),
	SystemTimer = Lib:new(1.0, 'lib.Galaxy Entities.SystemTimer', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/SystemTimer.lua?token=AHZUJCBGQ5BTUDG4GR6B43S7ASNOU"),
	LocalTimer = Lib:new(1.0, 'lib.Galaxy Entities.LocalTimer', "https://raw.githubusercontent.com/Kotovasya/GalaxyHelper/master/lib/Galaxy%20Entities/LocalTimer.lua?token=AHZUJCH6S7PEGRJN3NOJ6727ASNNA"),
}

local versionMetatable = { __index = { scirpt_version = scirpt_version } }
setmetatable(Libs, versionMetatable)

return Libs