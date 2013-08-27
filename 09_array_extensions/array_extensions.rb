class Array
	
	def sum
		sum = 0

		for i in 0..self.length-1
			sum += self[i]
		end
		return sum
	end

	def square
		square = []

		for i in 0..self.length-1
			square[i] = self[i] ** 2
		end
		return square
	end

	def square!
		self.map! { |x| x**2 }
	end	
end