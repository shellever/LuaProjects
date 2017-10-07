#!/usr/local/bin/lua


--[[
3. require( )
在同一个脚本中，require 只会执行一次，require 相同文件的代码并不会被重复执行。

因为 require 关注的问题只有分号（模式之间的分隔符）和问号，其他的信息（目录分隔符，文件扩展名）在路径中定义。
所以，在使用这个函数时，不需要也不能带上扩展名。
--]]

require("a")
require("a")		-- 第二次就不再加载运行

--[[
$ ./require.lua 
string
number
function
boolean
nil
string
$ 
--]]
