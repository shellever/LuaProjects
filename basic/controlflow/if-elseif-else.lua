#!/usr/local/bin/lua


--[[
控制结构的条件表达式结果可以是任何值，Lua认为false和nil为假，true和非nil为真。
要注意的是Lua中 0 为 true。
--]]
if(0) then
	print("0 is true")
end


a = 100
if (a == 10) then	
	print("Value of a is 10")
elseif (a == 20) then
	print("Value of a is 20")
else
	print("None of the values is matching")
end
print("Exact value of a is: ", a)
--[[
0 is true
None of the values is matching
Exact value of a is: 	100
--]]