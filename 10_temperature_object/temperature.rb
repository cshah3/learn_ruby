class Temperature
	attr_accessor :f, :c

	def initialize(h)
		@hash = h
	end

	def to_fahrenheit
		if @hash.include? :f
			return @hash[:f]
		else
			return @hash[:c] * (9.0/5.0) + 32
		end
	end

	def to_celsius
		if @hash.include? :c
			return @hash[:c]
		else
			return (@hash[:f] - 32) * (5.0/9.0)
		end
	end

	def self.in_celsius(temp)
		self.new({:c => temp})
	end

	def self.in_fahrenheit(temp)
		self.new({:f => temp})
	end
end

class Celsius < Temperature
	def initialize(temp)
		@hash = {:c => temp}
		Temperature.new(@hash)
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		@hash = {:f => temp}
		Temperature.new(@hash)
	end
end