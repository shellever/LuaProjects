#!/usr/local/bin/lua

--[[
在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。
也可以在表里添加一些数据，直接初始化表。

Lua 中的表(table)其实是一个"关联数组"(associative arrays)，数组的索引可以是数字或者是字符串。 

不同于其他语言的数组把 0 作为数组的初始索引，在 Lua 里表的默认初始索引一般以 1 开始。

table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil。
--]]


--[[
10 : 33
key : value
--]]
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
	print(k .. " : " .. v)
end


-- 直接初始化表
local tab2 = {"apple", "pear", "orange"}
--[[
1	apple
2	pear
3	orange
--]]
for key, val in pairs(tab2) do
	print(key, val)
end


-- 创建一个空的表
local tab = {}
for i = 1, 10 do
	tab[i] = i
end
tab["key"] = "val"
print(tab["key"])		-- val
print(tab["key2"])		-- nil