#!/usr/local/bin/lua

--[[
ipairs() 和 pairs() 区别
ipairs():  迭代数组，不能返回 nil，如果遇到 nil 则退出
 pairs():  迭代表，可以遍历表中所有的 key 可以返回 nil
--]]
local tab = {
	[1] = "apple",
	[3] = "cat",
	[5] = "elephant"
}
-- ipairs()
print("using ipairs() in tab:")
for k, v in ipairs(tab) do
	print(k, v)
end
-- pairs()
print("using pairs() in tab:")
for k,v in pairs(tab) do
	print(k, v)
end
--[[
using ipairs():
1	apple
using pairs():
1	apple
5	elephant
3	cat
--]]

local tab2 = {
	[1] = "apple",
	[3] = "cat",
	["fifth"] = "elephant"
}
print("using ipairs() in tab2:")
for i, v in ipairs(tab2) do
	print(tab2[i])
end
print("using pairs() in tab2:")
for i, v in pairs(tab2) do
	print(tab2[i])
end
--[[
using ipairs() in tab2:
apple
using pairs() in tab2:
apple
elephant
cat
--]]


-- 泛型 for 迭代器
array = {"Lua", "Python", "Shell"}
for k, v in ipairs(array) do
	print(k, v)
end
--[[
1	Lua
2	Python
3	Shell
--]]


-- 无状态的迭代器
function square(iteratorMaxCount, currentNumber)
	if currentNumber < iteratorMaxCount then
		currentNumber = currentNumber + 1
		return currentNumber, currentNumber * currentNumber
	end
end

for i, n in square, 3, 0 do
	print(i, n)
end
--[[
1	1
2	4
3	9
--]]


-- 多状态的迭代器
array = {"Lua", "Python", "Shell"}
-- elementIterator 内使用了闭包函数，实现计算集合大小并输出各个元素。
function elementIterator (collection)
	local index = 0
	local count = #collection
	-- 闭包函数
	return function ()
		index = index + 1
		if index <= count 
		then
			-- 返回迭代器的当前元素
			return collection[index]
		end
	end
end

for element in elementIterator(array)
do
	--print(type(element))		-- string
	print(element)
end
--[[
Lua
Python
Shell
--]]
