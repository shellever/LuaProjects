#!/usr/local/bin/lua


--[[
函数语法糖与冒号语法糖
--]]
-- 使用表来创建一个类
Person = {name = "Stephen Curry"}

Person.talk = function(self, words)
	print(self.name .. " says: " ..  words)
end

-- 函数语法糖
function Person.talk2(self, words)
	print(self.name .. " says: " ..  words)
end

-- 冒号语法糖
function Person:talk(words)
	print(self.name .. " says: " ..  words)
end

-- 调用
Person.talk2(Person, "Hello guys")
Person:talk("Hi guys")

--[[
Stephen Curry says: Hello guys
Stephen Curry says: Hi guys
--]]