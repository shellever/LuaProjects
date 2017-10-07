#!/usr/local/bin/lua


--[[
Lua支持goto语法，但是有一定的局限性，例如：
1. 不能在block外面跳入block (因为block中的label不可见)
2. 不能跳出或者跳入一个函数
3. 不能跳入本地变量的作用域
--]]

-- 模拟continue和redo语法
i = 0
while i < 10 do
	::redo::
	i = i + 1
	if i % 2 == 1 then
		goto continue
	else
		print(i)
		goto redo
	end
	::continue::
end

--[[
$ ./goto.lua 
2
4
6
8
10
--]]


--[[
-- 不能跳入一个本地变量的作用域
do
	goto notok1
	local i = 1
	print(i)
	::notok1::		-- 本地变量的作用域内，所以无法跳转
	i = i + 1
	::ok::			-- 本地变量的作用域结束，所以可以跳转
end
--]]
