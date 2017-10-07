#!/usr/local/bin/lua

-- 用do .. end可以用来明确限定局部变量的作用域。
-- 同C语言的大括号{}作用

local count
do
	local x = 665
	count = function() x = x + 1; return x end
end		
-- x的作用域结束，将被系统清理
print(count())
