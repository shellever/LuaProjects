#!/usr/local/bin/lua


-- 算数运算符
a = 10
b = 2

print(string.format("%d + %d = %d", a, b, a + b))
print(string.format("%d - %d = %d", a, b, a - b))
print(string.format("%d * %d = %d", a, b, a * b))
print(string.format("%d / %d = %d", a, b, a / b))
print(string.format("%d %% %d = %d", a, b, a % b))
print(string.format("%d^%d = %d", a, b, a^b))
print(string.format("%d", -a))
--[[
10 + 2 = 12
10 - 2 = 8
10 * 2 = 20
10 / 2 = 5
10 % 2 = 0
10^2 = 100
-10
--]]

-- 关系运算符
if(a == b) then
	print("a is equal to b")
else
	print("a is not equal to b")
end

if(a ~= b) then
	print("a is equal to b")
else
	print("a is not equal to b")
end

if(a < b) then
	print("a is less than b")
else
	print("a is not less than b")
end

if(a > b) then
	print("a is greater than b")
else
	print("a is not greater than b")
end

if(a >= b) then
	print("a is greater than or equal to b")
else
	print("a is not greater than or equal to b")
end

if(a <= b) then
	print("a is less than or equal to b")
else
	print("a is not less than or equal to b")
end
--[[
a is not equal to b
a is equal to b
a is not less than b
a is greater than b
a is greater than or equal to b
a is not less than or equal to b
--]]

-- 逻辑运算符
c = true
d = true

if(a and b) then
	print("true and true is true")
end

if(a or b) then
	print("true or true is true")
end

c = false
d = true

if(c and d) then
	print("false and true is true")
else
	print("false and true is false")
end
	
if(not(c and d)) then
	print("not(false and true) is true")
else
	print("not(false and true) is false")
end
--[[
true and true is true
true or true is true
false and true is false
not(false and true) is true
--]]

-- 其他运算符
e = "Hello"
f = "Lua"

print(e .. " " .. f)
print("length of Hello is: ", #e)
--[[
Hello Lua
length of Hello is: 	5
--]]
