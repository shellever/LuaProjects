#!/usr/local/bin/lua


mymath = {}

mymath.pi = 3.14

-- private function
local function _add(a, b)
	print(a + b)
	return a + b
end

function mymath.add(a, b)
	return a + b
end

function mymath.sub(a, b)
	return a - b
end

function mymath.mul(a, b)
	return a * b
end

function mymath.div(a, b)
	return a / b
end

return mymath
