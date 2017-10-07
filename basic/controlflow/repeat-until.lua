#!/usr/local/bin/lua

-- 同C语言的do...while语句
a = 10
repeat
	print("value of a: ", a)
	a = a + 1
until(a > 15)
--[[
value of a: 	10
value of a: 	11
value of a: 	12
value of a: 	13
value of a: 	14
value of a: 	15
--]]