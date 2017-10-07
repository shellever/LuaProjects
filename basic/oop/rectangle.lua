#!/usr/local/bin/lua

-- Meta class
Rectangle = {area = 0, length = 0, width = 0}

-- Derived class method new
function Rectangle:new(o, length, width)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.length = length or 0
	self.width = width or 0
	self.area = length * width
	--return 0		-- attempt to index a number value (global 'r')
	return o
end

-- Derived class method printArea
function Rectangle:printArea()
	print("The area of Rectangle is: ", self.area)
end

-- 创建对象
r = Rectangle:new(nil, 10, 20)

-- 访问属性
print(r.length)

-- 调用成员函数
print(r:printArea())
