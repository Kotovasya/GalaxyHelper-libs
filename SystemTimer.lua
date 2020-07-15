local version = 1.0

local SystemTimer = { version = version }
function SystemTimer:new(time, func, args)
	local public = {}
		public.timeStart = nil
		public.timeEnd = nil
		public.timeLeft = time
		public.timePast = 0

		public.pause = false

		public.func = func
		public.functionArgs = args
		public.functionInvoke = true

		local function beginTimer()
			self.startTime = os.time()
			self.timeEnd = self.startTime + self.timeLeft
			while(self.TimeLeft > 0) do
				wait(0)
				if not self.pause then 
					self.timeLeft = self.timeEnd - os.time()
					self.timePast = os.time() - self.timeStart 
				end
			end
			if self.functionInvoke then
				self.func(self.functionArgs)
			end
		end

		function public:startTimer()
			self.startTimer:run(self)
		end

		function public:pauseTimer()
			self.pause = true
		end

		function public:continueTimer()
			self.timeEnd = os.time() + self.TimeLeft
			self.pause = false
		end

		function public:endTimer(invoke)
			self.functionInvoke = invoke
			self.timeLeft = 0
		end

		public.startTimer = lua_thread.create_suspended(beginTimer)

	setmetatable(public, self)
	self.__index = self;
	 return public
end

return SystemTimer