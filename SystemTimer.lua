local version = 1.0

local SystemTimer = { version = version }
function SystemTimer:new(time, func, args)
	local public = {}
		public.TimeStart = nil
		public.TimeEnd = nil
		public.TimeLeft = time
		public.TimePast = 0

		public.Pause = false

		public.Function = func
		public.FunctionArgs = args
		public.FunctionInvoke = true

		local function beginTimer()
			self.StartTime = os.time()
			self.TimeEnd = self.StartTime + self.TimeLeft
			while(self.TimeLeft > 0) do
				wait(0)
				if not self.Pause then 
					self.TimeLeft = self.TimeEnd - os.time()
					self.TimePast = os.time() - self.TimeStart 
				end
			end
			if self.FunctionInvoke then
				self.Function(self.FunctionArgs)
			end
		end

		function public:startTimer()
			self.StartTimer:run(self)
		end

		function public:pauseTimer()
			self.Pause = true
		end

		function public:continueTimer()
			self.TimeEnd = os.time() + self.TimeLeft
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

return SystemTimer