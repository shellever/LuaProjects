#!/usr/local/bin/lua

--[[
字符串是一个字符序列，以及控制字符。字符串可以用三种形式被初始化，其中包括：
1.单引号之间的字符
2.双引号之间的字符
3.[] 之间的字符[[和]]
--]]
str_lua = "Lua Project"
str_lua2 = [[Lua Tutorial]]
print(str_lua)		-- Lua Project
print(str_lua2)		-- Lua Tutorial


--[[
字符串操作
1. string.upper(arg) -- 返回参数的大写表示
2. string.lower(arg) -- 返回参数的小写表示
3. string.gsub(mainString, findString, replaceString)
-- 返回一个字符串，通过replaceString替换查找字符串的出现
4. string.strfind(mainString, findString, optionalStartIndex, optionalEndIndex)
-- 若未找到，则返回该查找字符串在主字符串和零的起始索引和结束索引
5. string.reverse(arg) 
-- 返回一个字符串，通过反转传递的字符串的字符
6. string.format(...)
-- 返回一个格式化字符串
7. string.char(arg) / string.byte(arg)
-- 返回输入参数，内部的数字和字符表示
8. string.len(arg)
-- 返回传递的字符串的长度
9. string.rep(string, n)
-- 返回一个字符串，通过重复相同的字符串N多次
10. ..
-- 双点运算符用于连接两个字符串
--]]
print(string.upper("shellever"))			-- SHELLEVER
print(string.lower("SHELLEVER"))			-- shellever

mainString = "Lua Tutorial"
newString = string.gsub(mainString, "Tutorial", "Language")
print(newString)							-- Lua Language

print(string.find(mainString, "Tutorial"))	-- 5	12
print(string.reverse("SHELLEVER"))			-- REVELLEHS

print(string.format("%s %s", "Lua", "Language"))	-- Lua Language
print(string.format("%02d/%02d/%04d", 10, 3, 2017))	-- 10/03/2017
print(string.format("%.2f", 3.14))					-- 3.14

print(string.byte("Lua"))		-- 76
print(string.byte("Lua", 1))	-- 76
print(string.byte("Lua", 3))	-- 97
print(string.byte("Lua", -1))	-- 97

print(string.char(97))			-- a

print("Lua" .. " Language")				-- Lua Language

print(string.len("shellever"))			-- 9

print(string.rep("hello,", 3) .. "Lua")	-- hello,hello,hello,Lua

