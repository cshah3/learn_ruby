def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(arr)
	result = arr.inject(0) {|result, i| result + i}
	return result
end