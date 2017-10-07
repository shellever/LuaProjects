#!/usr/local/bin/lua


--[[
1. loadfile( )
只会加载文件、编译代码，而不会运行文件里的代码。
loadfile 加载了文件，并把文件里的代码编译了，返回了一个包含文件所有代码的函数。
--]]

--loadfile("a.lua")		-- 只加载，但不会运行a.lua里面的代码

f = loadfile("a.lua")	-- 加载a.lua文件后，返回一个包含此文件代码的函数
f()

--[[
$ ./a.lua 
string
number
function
boolean
nil
string
$ ./loadfile.lua 
string
number
function
boolean
nil
string
$
--]]