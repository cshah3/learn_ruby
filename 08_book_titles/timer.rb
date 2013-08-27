class Timer
	
	attr_accessor :seconds
	
	def initialize
		@seconds = 0
	end

	def time_string
		hours = @seconds / 3600
		minutes = ( @seconds - hours * 3600 ) / 60
		secs = @seconds - hours * 3600 - minutes * 60

		"#{padded(hours)}:#{padded(minutes)}:#{padded(secs)}"
	end

	def padded(num)
		if num < 10
			"0" + num.to_s
		else
			num.to_s
		end
	end
end