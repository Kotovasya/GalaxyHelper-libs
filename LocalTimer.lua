local version = 1.0

local LocalTimer = { version = version }
function LocalTimer:new(time, func, args)
	local public = {}
		public.timeStart = nil
		public.timeEnd = nil
		public.timeLeft = time
		public.timePast = 0

		public.pause = false

		public.func = func
		public.functionArgs = args
		public.functionInvoke = true

		local function beginTimer(timer)
			timer.systemStartTime = os.date("*t")
			timer.startTime = localClock()
			timer.timeEnd = timer.startTime + timer.timeLeft
			while(timer.timeLeft > 0) do
				wait(0)
				if not timer.pause then 
					timer.timeLeft = timer.timeEnd - localClock()
					timer.timePast = localClock() - timer.startTime
				end
			end
			if timer.functionInvoke then
				timer.func(timer.functionArgs)
			end
		end

		function public:startTimer()
			self.startTimer:run(self)
		end

		function public:pauseTimer()
			self.pause = true
		end

		function public:continueTimer()
			self.timeEnd = localClock() + self.TimeLeft
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

return LocalTimer