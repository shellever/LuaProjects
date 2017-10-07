#!/usr/local/bin/lua

print(type(true))	-- boolean
print(type(false))	-- boolean
print(type(nil))	-- nil

-- flase and nil are false
if false or nil then
	print("flase or nil is true")
else
	print("false and nil are false")
end