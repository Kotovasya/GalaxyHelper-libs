local version = 1.0

local GangzoneColors = {
	[2861858565] = "La Cosa Nostra",
	[2859596794] = "Yakuza",
	[2862188663] = "Русская Мафия",
	[2866228362] = "The Ballas Gang",
	[2854279167] = "Los Santos Vagos",
	[2868566287] = "El Coronos",
	[2854870032] = "The Grove Street",
	[2867696996] = "Street Racers",
	[2863518752] = "San Fierro Rifa",
	[2865505530] = "The Triads Mafia",
	[2857194096] = "Hell Angels",
	[2859352908] = "Black Kings",
}

local versionMetatable = { __index = { version = version } }
setmetatable(GangzoneColors, versionMetatable)

return GangzoneColors