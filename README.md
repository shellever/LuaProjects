# LuaProjects

# 编译动态链接库liblua.so
1. 在src/Makefile中添加或修改下面规则
```makefile
LUA_SO= liblua.so
ALL_T= $(LUA_A) $(LUA_T) $(LUAC_T) $(LUA_SO)
$(LUA_SO): $(CORE_O) $(LIB_O)
	$(CC) -o $@ -fPIC -shared $? -ldl -lm
```
2. 在顶层Makefile中修改TO_LIB规则
```makefile
TO_LIB= liblua.a liblua.so
```
3. 使用make编译时可指定平台，如linux
```bash
make linux
```
4. 安装到系统指定位置，其中可选使用INSTALL_TOP来指定安装Lua的目录
```bash
sudo make install "INSTALL_TOP=xxx"
```
