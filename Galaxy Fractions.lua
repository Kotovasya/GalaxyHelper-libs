local version = 1.0

local Member = 'lib.Galaxy Entities.Fraction Member'

local Fraction = {}
function Fraction:new(hexColor, commandColor, gangzoneColor, name, skins, ranks)
	local public = {}
		public.hexColor = hexColor 								-- 0xAAAAAA example
		public.commandColor = commandColor						-- /cvet 85 example
		public.gangzoneColor = gangzoneColor				
		public.name = name
		public.skins = skins									-- Fraction skin table
		public.ranks = ranks									-- Fraction ranks
		
		public.members = {}										-- Fraction members table
		
	setmetatable(public, self)
	self.__index = self;
	 return public
end

local function fractionsInitialization()
	local t = {}

	local versionMetatable = { __index = { version = version } }
  	setmetatable(t, versionMetatable)

	-- LCN
	local skins = { 46, 98, 113, 124, 126, 223, 233 }
	local ranks = { [1] = "Посторонний", [2] = "Комбатенте", [3] = "Член Семьи", [4] = "Капо", [5] = "Консильвери", [6] = "Крестный Отец" }
	t["La Cosa Nostra"] = Fraction:new(0x057F94, "/cvet 44", 2861858565, "La Cosa Nostra", skins, ranks)
	
	-- Yakuza
	skins = { 120, 121, 122, 123, 169, 186, 228 }
	ranks = { [1] = "Вакасю", [2] = "Кёдай", [3] = "Сятейгасира", [4] = "Сайко", [5] = "Оябун-Кобун", [6] = "Кумитё" }
	t["Yakuza"] = Fraction:new(0xFAFB71, "/cvet 72", 2859596794, "Yakuza", skins, ranks)
	
	-- Русская Мафия
	skins = { 3, 111, 112, 125, 206, 216, 272 }
	ranks = { [1] = "Шнырь", [2] = "Фраер", [3] = "Жиган", [4] = "Смотрящий", [5] = "Авторитет", [6] = "Главарь" }
	t["Русская Мафия"] = Fraction:new(0x778899, "/cvet 6", 2862188663, "Русская Мафия", skins, ranks)
	
	-- The Ballas Gang
	skins = { 13, 28, 102, 103, 104 }
	ranks = { [1] = "Young Nigga", [2] = "Gangster", [3] = "Old Gangster", [4] = "Killa", [5] = "Big Brother", [6] = "Daddy" }
	t["The Ballas Gang"] = Fraction:new(0x8A2CD7, "/cvet 93", 2866228362, "The Ballas Gang", skins, ranks)
	
	-- Los Santos Vagos
	skins = { 12, 108, 109, 110, 273 }
	ranks = { [1] = "Novato", [2] = "Odrinario", [3] = "Verificado", [4] = "Autoridad", [5] = "Adjunto", [6] = "Padre" }
	t["Los Santos Vagos"] = Fraction:new(0xFFD720, "/cvet 10", 2854279167, "Los Santos Vagos", skins, ranks)
	
	-- El Coronos
	skins = { 114, 47, 115, 116, 292, 298 }
	ranks = { [1] = "Novato", [2] = "Comprobar", [3] = "Verificado", [4] = "El Enternador Mayor", [5] = "Adjunto", [6] = "Padre" }
	t["El Coronos"] = Fraction:new(0x0FD9FA, "/cvet 16", 2868566287, "El Coronos", skins, ranks)
	
	-- The Grove Street
	skins = { 86, 105, 106, 107, 195, 269, 270, 271 }
	ranks = { [1] = "Youngsta", [2] = "Gangsta", [3] = "Old Gangsta", [4] = "Cheked Up", [5] = "Authority", [6] = "Pac" }
	t["The Grove Street"] = Fraction:new(0x10DC29, "/cvet 17", 2854870032, "The Grove Street", skins, ranks)
	
	-- Street Racers
	skins = { 21, 48, 60, 180, 193, 250, 299 }
	ranks = { [1] = "Новенький", [2] = "Уличный гонщик", [3] = "Опытный гонщик", [4] = "Профи", [5] = "Гроза дорог", [6] = "Король дорог" }
	t["Street Racers"] = Fraction:new(0x6495ED, "/cvet 4", 2867696996, "Street Racers", skins, ranks)
	
	-- San Fierro Rifa
	skins = { 30, 40, 173, 174, 175, 184 }
	ranks = { [1] = "Novato", [2] = "Odrinario", [3] = "Verificado", [4] = "Autoridad", [5] = "Adjunto", [6] = "Padre" }
	t["San Fierro Rifa"] = Fraction:new(0x20D4AD, "/cvet 59", 2863518752, "San Fierro Rifa", skins, ranks)
	
	-- The Triads Mafia
	skins = { 117, 118, 141, 170, 208, 294 }
	ranks = { [1] = "Сей Коу Джай", [2] = "Шо Хай", [3] = "Хунк Кван", [4] = "Синг Фунг", [5] = "Фу Шан Су", [6] = "Тай Ло" }
	t["The Triads Mafia"] = Fraction:new(0xFA24CC, "/cvet 85", 2865505530, "The Triads Mafia", skins, ranks)
	
	-- Hell Angels
	skins = { 100, 192, 247, 248, 254 }
	ranks = { [1] = "Prospective", [2] = "Member", [3] = "Road Captain", [4] = "Treasure", [5] = "Vice President", [6] = "President" }
	t["Hell Angels"] = Fraction:new(0x70524D, "/cvet 91", 2857194096, "Hell Angels", skins, ranks)

	-- Black Kings
	skins = { 24, 25, 66, 67, 190, 297, 183 }
	ranks = { [1] = "Young Gangster", [2] = "Shooter", [3] = "Ghetto Soldier", [4] = "Playa", [5] = "Legend", [6] = "Pac" }
	t["Black Kings"] = Fraction:new(0x4C436E, "/cvet 84", 2859352908, "Black Kings", skins, ranks)

	-- LSPD
	skins = { 280, 282, 284, 283, 267, 266, 265, 306 }
	ranks = { [1] = "Кадет", [2] = "Патрульный", [3] = "Офицер", [4] = "Инспектор", [5] = "Комиссар", [6] = "Шериф" }
	t["Полиция LS"] = Fraction:new(0x1A30BF, "/cvet 68", 0, "Полиция LS", skins, ranks)

	-- LVPD
	skins = { 280, 282, 284, 283, 267, 266, 265, 309 }
	ranks = { [1] = "Кадет", [2] = "Патрульный", [3] = "Офицер", [4] = "Инспектор", [5] = "Комиссар", [6] = "Шериф" }
	t["Полиция LV"] = Fraction:new(0x6152C2, "/cvet 94", 0, "Полиция LV", skins, ranks)

	-- FBI
	skins = { 285, 286, 163, 164, 307 }
	ranks = { [1] = "Стажер", [2] = "Агент", [3] = "Спец. Агент", [4] = "Командир", [5] = "Зам. Директора", [6] = "Директор" }
	t["ФБР"] = Fraction:new(0x0033A8, "/cvet 87", 0, "ФБР", skins, ranks)

	-- Army
	skins = { 191, 287 }
	ranks = { [1] = "Рядовой", [2] = "Сержант", [3] = "Лейтенант", [4] = "Капитан", [5] = "Майор", [6] = "Генерал" }
	t["Армия"] = Fraction:new(0x247C1B, "/cvet 22", 0, "Армия", skins, ranks)

	-- EMT
	skins = { 70, 156, 275, 276, 274, 308 }
	ranks = { [1] = "Фельдшер", [2] = "Реаниматор", [3] = "Спасатель", [4] = "Младший инструктор", [5] = "Инструктор", [6] = "Начальник департамента" }
	t["EMT"] = Fraction:new(0xDC143C, "/cvet 3", 0, "EMT", skins, ranks)

	-- Lawyers
	skins = { 171, 189, 20, 59, 217, 240, 194 }
	ranks = { [1] = "Абитуриент", [2] = "Стажёр", [3] = "Юрист", [4] = "Главный юрист", [5] = "Зам. Директора", [6] = "Директор" }
	t["Коллегия адвокатов"] = Fraction:new(0xE59338, "/cvet 96", 0, "Коллегия адвокатов", skins, ranks)

	-- Taxi
	skins = { 261, 262, 253, 255, 61, 172 }
	ranks = { [1] = "Новичок", [2] = "Бомбила", [3] = "Таксист", [4] = "Опытный Таксист", [5] = "Зам. Управляющего", [6] = "Управляющий" }
	t["Таксопарк"] = Fraction:new(0xA55043, "/cvet 48", 0, "Таксопарк", skins, ranks)

	-- San News
	skins = { 187, 188, 290, 295, 150 }
	ranks = { [1] = "Новичок", [2] = "Местный репортёр", [3] = "Местный редактор", [4] = "Репортёр телесети", [5] = "Редактор телесети", [6] = "Продюсер телесети" }
	t["San News"] = Fraction:new(0xC1F7EC, "/cvet 82", 0, "San News", skins, ranks)

	-- Civil
	t["Гражданские"] = Fraction:new(0xFFFFFF, "/cvet 100", 0, "Гражданские", {}, {})
	return t -- инициализирует общую информацию о фракциях
end

return fractionsInitialization()