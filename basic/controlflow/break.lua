#!/usr/local/bin/lua

a = 10
while(a < 20)
do
	print("value of a: ", a)
	a = a + 1
	if(a > 15)
	then
		break
	end
end
--[[
value of a: 	10
value of a: 	11
value of a: 	12
value of a: 	13
value of a: 	14
value of a: 	15
--]]