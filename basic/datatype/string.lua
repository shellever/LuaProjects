#!/usr/local/bin/lua

--[=[
字符串由一对双引号或单引号来表示。
也可以用 2 个方括号 "[[]]" 来表示"一块"字符串。

在对一个数字字符串上进行算术操作时，Lua 会尝试将这个数字字符串转成一个数字。

使用 # 来计算字符串的长度，放在字符串前面。
--]=]
welcome = "hello world and hello me!"
welcome2 = 'hello world'
html = [[
<html>
<head>Lua - String</head>
<body>
	<a href="http://shellever.com">Shellever</a>
</body>
</html>
]]

print(welcome)
print(welcome2)
print(html)

print("2" + 6)			-- 8.0
print("2" + "6")		-- 8.0
print("2 + 6")			-- 2 + 6
print("a" .. "b")		-- ab
print(157 .. 428)		-- 157428
print(#welcome2)		-- 11

--[[
/usr/bin/lua: ./string.lua:27: attempt to perform arithmetic on a string value
stack traceback:
	./string.lua:27: in main chunk
	[C]: in ?
--]]
--print("error" + 1)	-- 
