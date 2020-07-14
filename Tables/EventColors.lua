local version = 1.0

local EventColors = {
	[1433108731] = "La Cosa Nostra",
	[1435370502] = "Yakuza",
	[1432778633] = "Русская Мафия",
	[1428738934] = "The Ballas Gang",
	[1440688129] = "Los Santos Vagos",
	[1426401009] = "El Coronos",
	[1440097264] = "The Grove Street",
	[1427270300] = "Street Racers",
	[1431448544] = "San Fierro Rifa",
	[1429461766] = "The Triads Mafia",
	[1437773200] = "Hell Angels",
	[1435614388] = "Black Kings",
} -- цвета переведены в положительные (по модулю)

local versionMetatable = { __index = { version = version } }
setmetatable(EventColors, versionMetatable)

return EventColors