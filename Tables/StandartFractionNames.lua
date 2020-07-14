local version = 1.1

local StandartFractionNames = {
	["La Cosa Nostra"] = {
		["Full"] = "La Cosa Nostra",
		["Capinfo"] = "LCN"
	},
	["Yakuza"] ={
		["Full"] = "Yakuza",
		["Capinfo"] = "Yakuza"
	},
	["Русская Мафия"] = {
		["Full"] = "Russian Mafia",
		["Capinfo"] = "Russian Mafia"
	},
	["The Ballas Gang"] = {
		["Full"] = "The Ballas Gang",
		["Capinfo"] = "Ballas"
	},
	["Los Santos Vagos"] = {
		["Full"] = "Los Santos Vagos",
		["Capinfo"] = "Vagos"
	},
	["El Coronos"] = {
		["Full"] = "El Coronos",
		["Capinfo"] = "El Coronos"
	},
	["The Grove Street"] = {
		["Full"] = "The Grove Street",
		["Capinfo"] = "Grove Street"
	},
	["Street Racers"] = {
		["Full"] = "Street Racers",
		["Capinfo"] = "Street Racers"
	},
	["San Fierro Rifa"] = {
		["Full"] = "San Fierro Rifa",
		["Capinfo"] = "San Fierro Rifa"
	},
	["The Triads Mafia"] = {
		["Full"] = "The Triads Mafia",
		["Capinfo"] = "The Triads Mafia"
	},
	["Hell Angels"] = {
		["Full"] = "Hell Angels",
		["Capinfo"] = "Hell Angels"
	},
	["Black Kings"] = {
		["Full"] = "Black Kings",
		["Capinfo"] = "Black Kings"
	},
	["Полиция LS"] = {
		["Full"] = "Police LS"
	},
	["Полиция LV"] = {
		["Full"] = "Police LV"
	},
	["ФБР"] = {
		["Full"] = "FBI"
	},
	["Армия"] = {
		["Full"] = "Army"
	},
	["EMT"] = {
		["Full"] = "EMT"
	},
	["Коллегия адвокатов"] = {
		["Full"] = "Lawyers"
	},
	["Таксопарк"] = {
		["Full"] = "Taxi"
	},
	["San News"] = {
		["Full"] = "San News"
	} -- необходима для инициализации стандартных настроек названий фракций
}

local versionMetatable = { __index = { version = version } }
setmetatable(StandartFractionNames, versionMetatable)

return StandartFractionNames