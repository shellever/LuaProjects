#!/usr/local/bin/lua


fruits = {"apple", "banana", "orange", "pear"}


-- table.concat() - 串联元素
print(table.concat(fruits, ", "))	-- apple, banana, orange, pear
print(table.concat(fruits, "-", 2, 3))	-- banana-orange


-- table.insert() - 插入元素
-- table.remove() - 删除指定元素
table.insert(fruits, "mango")
print(table.concat(fruits, ", "))	-- apple, banana, orange, pear, mango
table.insert(fruits, 2, "Hami-melon")
print(table.concat(fruits, ", "))	-- apple, Hami-melon, banana, orange, pear, mango

table.remove(fruits, 2)
print(table.concat(fruits, ", "))	-- apple, banana, orange, pear, mango

-- table.maxn() - 表元素的最大索引值 - Lua 5.3已去掉此函数
--print(table.maxn(fruits))			-- attempt to call a nil value (field 'maxn')
function table_maxn(t)
	local mn = 0
	for k, v in pairs(t) do
		if mn < k then
			mn = k
		end
	end
	return mn
end
print("table_maxn(): ", table_maxn(fruits)) -- table_maxn(): 	5


-- table.sort() - 排序元素
print("Before sorting: ")
for k, v in ipairs(fruits) do
	print(k, v)
end

table.sort(fruits)

print("After sorting: ")
for k, v in ipairs(fruits) do
	print(k, v)
end
--[[
Before sorting: 
1	apple
2	banana
3	orange
4	pear
5	mango
After sorting: 
1	apple
2	banana
3	mango
4	orange
5	pear
--]]
