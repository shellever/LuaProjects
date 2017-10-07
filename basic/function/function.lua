#!/usr/local/bin/lua


-- 返回最大值
function max(a, b)
	if(a > b) then
		result = a
	else
		result = b
	end
	return result
end


-- 返回最小值
function min(a, b)
	result = a
	if(a > b) then
		result = b
	end
	return result
end

print("max value: ", max(10, 4))
print("min value: ", min(5, 8))
--[[
max value: 	10
min value: 	5
--]]


-- 使用函数作为参数
function operate(a, b, func)
	return func(a, b)
end

function add(a, b)
	return a + b
end

print(operate(10, 2, add))		-- 12


-- 多值返回
s, e = string.find("www.shellever.com", "shellever")
print(s, e)		-- 5	13

function max(tab)
	local max_index = 1
	local max_val = tab[max_index]
	for i, val in pairs(tab) do
		if val > max_val then
			max_val = val
			max_index = i
		end
	end
	return max_val, max_index
end
print(max({30, 11, 24, 35}))	-- 35	4


-- 可变参数
function average(...)
	result = 0
	local arg = {...}
	for i, v in ipairs(arg) do
		result = result + v
	end
	return result / #arg
end

print("The average is: ", average(10, 5, 2, 4, 8))	-- 5.8
