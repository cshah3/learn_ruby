def reverser
	yield.reverse.split(" ").reverse.join(" ")
end

def adder(x = 1)
	yield + x
end

def repeater(*args)
	sum = 0
	if args.length == 0 
		return yield
	else
		for i in 1..args[0]
		sum += yield
		end
	end
	return sum
end