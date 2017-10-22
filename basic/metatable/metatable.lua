#!/usr/local/bin/lua


--[[
Metatable - 元表

1. 元表操作函数
setmetatable(table, metatable)		--// 设置table的元表为metatable
getmetatable(table)					--// 返回table所关联的元表

2. 元表常用的键
2.1 __index - getter - access
当通过键来访问当前table中的属性时，若table当前没有此键，则Lua会寻找当前table的元表metatable中__index键，
若__index键包含一个表格，Lua会在此表格中查找相对应的键。
若__index键包含一个函数，Lua就会调用此函数，同时table和键会作为参数传递给此函数。

__index 元方法在查找表中元素是否存在时，若不存在，返回nil；若存在则由__index根据上面查找规则来返回结果。


2.2 __newindex - setter - update
__newindex 元方法用来对表更新，__index则用来对表访问 。

当给表的一个缺少的索引赋值，解释器就会查找__newindex 元方法：如果存在则调用这个函数而不进行赋值操作。
--]]

phone_raw = {height = 1920, width = 1080}

phone = setmetatable(phone_raw, {
	__index = function(phone, key)
		if key == "model" then
			return "m2 note"
		else
			return nil
		end
	end
})

phone_meizu = setmetatable({color = "blue"}, {
	__index = phone
})

phone_meizu_meilan = setmetatable({build = "Flyme 6.2.0.0A"}, {
	__index = phone_meizu
})

print(phone_meizu_meilan.build)
print(phone_meizu_meilan.color)
print(phone_meizu_meilan.height)
print(phone_meizu_meilan.model)
--[[
Flyme 6.2.0.0A
blue
1920
m2 note
--]]

pother = {foo = 3}
t = setmetatable({}, {__index = pother})
print(t.foo)

mytable = setmetatable({key1 = "value1"}, {
	__index = function(mytable ,key)
		if key == "key2" then
			return "metatablevalue"
		else
			return nil
		end
	end
})
print(mytable.key1, mytable.key2)


--[[
2.2 __newindex - setter - update
__newindex 元方法用来对表更新，__index则用来对表访问 。

当给表的一个缺少的索引赋值，解释器就会查找__newindex 元方法：如果存在则调用这个函数而不进行赋值操作。
而如果对已存在的索引键（key1），则会进行赋值，而不调用元方法 __newindex。
--]]
mymetatable = {}
mytable = setmetatable({key1 = "value1"}, {__newindex = mymetatable})

print(mytable.key1)

mytable.newkey = "newvalue"
print(mytable.newkey)
print(mymetatable.newkey)

mytable.key1 = "newvalue1"
print(mytable.key1)
print(mymetatable.key1)
--[[
value1
nil
newvalue
newvalue1
nil
--]]

mytable = setmetatable({key1 = "value1"}, {
	__newindex = function(mytable, key, value)
		rawset(mytable, key, value)
	end
})
mytable.key1 = "newvalue1"
mytable.key2 = 4
print(mytable.key1)		-- newvalue1
print(mytable.key2)		-- 4


--[[
2.3 __call
__call 元方法在 Lua 调用一个值时调用。
即使用小括号调用表时，此元方法被调用。
--]]
-- 计算表中元素的和
-- 计算表中最大值，table.maxn在Lua5.2以上版本中已无法使用
-- 自定义计算表中最大键值函数 table_maxn，即计算表的元素个数
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

-- 定义元方法__call
mytable = setmetatable({10}, {
  __call = function(mytable, newtable)
    sum = 0
    for i = 1, table_maxn(mytable) do
        sum = sum + mytable[i]
    end
    for i = 1, table_maxn(newtable) do
        sum = sum + newtable[i]
    end
    return sum
  end
})
newtable = {10,20,30}
print(mytable(newtable))	-- 70


--[[
2.4 __tostring
__tostring 元方法用于修改表的输出行为。
--]]
mytable = setmetatable({ 10, 20, 30 }, {
  __tostring = function(mytable)
    sum = 0
    for _, v in pairs(mytable) do
        sum = sum + v
    end
    return "sum = " .. sum
  end
})
print(mytable)				-- sum = 60


--[[
2.5 __add 键包含在元表中，并进行相加操作。
--]]
-- 计算表中最大值，table.maxn在Lua5.2以上版本中已无法使用
-- 自定义计算表中最大键值函数 table_maxn，即计算表的元素个数
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

-- 两表相加操作
mytable = setmetatable({ 1, 2, 3 }, {
  __add = function(mytable, newtable)
    for i = 1, table_maxn(newtable) do
      table.insert(mytable, table_maxn(mytable)+1, newtable[i])
    end
    return mytable
  end
})

secondtable = {4,5,6}

mytable = mytable + secondtable
for k,v in ipairs(mytable) do
	print(k,v)
end
--[[
1	1
2	2
3	3
4	4
5	5
6	6
--]]
