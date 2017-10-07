#!/usr/local/bin/lua

--[[
变量在使用前，必须在代码中进行声明，即创建该变量。
编译程序执行代码之前编译器需要知道如何给语句变量开辟存储区，用于存储变量的值。
Lua 变量有三种类型：全局变量、局部变量、表中的域。
Lua 中的变量全是全局变量，那怕是语句块或是函数里，除非用 local 显式声明为局部变量。
局部变量的作用域为从声明位置开始到所在语句块结束。
变量的默认值均为 nil。 
--]]

a = 5				-- 全局变量
local b = 6			-- 局部变量

function joke()
	print(a)		-- 5	
	print(b)		-- 6
	c = 7			-- 全局变量
	local d = 8		-- 局部变量
end

joke()
print(c)			-- 7
print(d)			-- nil

do
	local e = 9		-- 局部变量
	f = 10			-- 全局变量
	print(e)		-- 9
	print(f)		-- 10
end
print(e)			-- nil
print(f)			-- 10


--[[
Lua可以对多个变量同时赋值，变量列表和值列表的各个元素用逗号分开，赋值语句右边的值会依次赋给左边的变量。 
--]]
g, h = 11, 12
print(g)			-- 11
print(h)			-- 12

g, h = h, g
print(g)			-- 12
print(h)			-- 11


--[[
当变量个数和值的个数不一致时，Lua会一直以变量个数为基础采取以下策略：
a. 变量个数 > 值的个数     按变量个数补足nil
b. 变量个数 < 值的个数     多余的值会被忽略
--]]
i, j, k = 0, 1
print(i)			-- 0
print(j)			-- 1
print(k)			-- nil

m, n = 0, 1, 2
print(m)			-- 0
print(n)			-- 1


--[[
对 table 的索引使用方括号 [ ]。Lua 也提供了点符号 . 操作。 
--]]
web_site = {}
web_site["host"] = "www.shellever.com"
print(web_site["host"])		-- www.shellever.com
print(web_site.host)		-- www.shellever.com
