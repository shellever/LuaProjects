#!/usr/local/bin/lua


--[[
2. dofile( )
dofile 是会执行文件里的代码的。
--]]

dofile("a.lua")

f = dofile("a.lua")

-- 直接运行f()函数的话，会正确打印一次后，再次运行f()函数，导致报nil错误
--f()			-- attempt to call a nil value (global 'f')

-- 避免再次运行时报nil错误
if f then
	f()
end

--[[
$ ./dofile.lua 
string
number
function
boolean
nil
string
$
--]]