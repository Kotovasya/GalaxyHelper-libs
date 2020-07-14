local version = 1.0

local LocalTimer = { version = version }
function LocalTimer:new(time, func, args)
	local public = {}
		public.TimeStart = nil
		public.TimeEnd = nil
		public.TimeLeft = time
		public.TimePast = 0

		public.Pause = false

		public.Function = func
		public.FunctionArgs = args
		public.FunctionInvoke = true

		local function beginTimer(timer)
			timer.SystemStartTime = os.date("*t")
			timer.StartTime = localClock()
			timer.TimeEnd = timer.StartTime + timer.TimeLeft
			while(timer.TimeLeft > 0) do
				wait(0)
				if not timer.Pause then 
					timer.TimeLeft = timer.TimeEnd - localClock()
					timer.TimePast = localClock() - timer.StartTime
				end
			end
			if timer.FunctionInvoke then
				timer.Function(timer.FunctionArgs)
			end
		end

		function public:startTimer()
			self.StartTimer:run(self)
		end

		function public:pauseTimer()
			self.Pause = true
		end

		function public:continueTimer()
			self.TimeEnd = localClock() + self.TimeLeft
			self.Pause = false
		end

		function public:endTimer(invoke)
			self.FunctionInvoke = invoke
			self.TimeLeft = 0
		end

		public.StartTimer = lua_thread.create_suspended(beginTimer)

	setmetatable(public, self)
	self.__index = self;
	 return public
		
end

return LocalTimer