#!/usr/local/bin/lua


-- 加载模块mymath.lua
require("mymath")
print("mymath.pi = ", mymath.pi)		-- mymath.pi = 	3.14
print(mymath.add(10, 20))	-- 30


-- 将加载的模块定义一个别名变量
local mymath2 = require("mymath2")
print("mymath2.pi = ", mymath2.pi)		-- mymath2.pi = 	3.14