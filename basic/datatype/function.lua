#!/usr/local/bin/lua


--[[
在 Lua 中，函数是被看作是"第一类值（First-Class Value）"，函数可以存在变量里
--]]

function factorial(n)
	if n == 0 then
		return 1
	else
		return n * factorial(n - 1)
	end
end

print(factorial(5))		-- 120
factorial2 = factorial
print(factorial2(5))	-- 120


--[[
function 可以以匿名函数（anonymous function）的方式通过参数传递
--]]
function call(tab, func)
	for k, v in pairs(tab) do
		print(func(k, v))
	end
end

--[[
name = shellever
email = shellever@163.com
--]]
tab = {name = "shellever", email = "shellever@163.com"}
call(tab, 
function(key, val)
	return key .. " = " .. val
end
)


--[[
email => shellever@163.com
name => shellever
--]]
function pack(key, val)
	return key .. " => " .. val
end
call(tab, pack)
