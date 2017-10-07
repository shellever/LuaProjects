#!/usr/local/bin/lua


--[[
无限循环
在循环体中如果条件永远为 true 循环语句就会永远执行下去
--]]
i = 0
while(true)
do
	print("i = ", i)
	i = i + 1
	if(i > 10) 
	then
		break
	end
end

--[[
linuxfor@Linuxfor:~/Documents/Lua/basic/controlflow$ ./while.lua 
i = 	0
i = 	1
i = 	2
i = 	3
i = 	4
i = 	5
i = 	6
i = 	7
i = 	8
i = 	9
i = 	10
--]]


a = 10
while(a < 20) do
	print("value of a: ", a)
	a = a + 1
end
--[[
value of a: 	10
value of a: 	11
value of a: 	12
value of a: 	13
value of a: 	14
value of a: 	15
value of a: 	16
value of a: 	17
value of a: 	18
value of a: 	19
--]]

