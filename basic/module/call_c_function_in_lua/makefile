lib = mylib.so
LUAINC = /home/linuxfor/Documents/Lua/source/lua-5.3.4/src

$(lib): mylib.c
	gcc -fPIC -shared -Wall -I $(LUAINC) -o mylib.so mylib.c

# make clean
.PHONY: clean
clean:
	rm -rf $(lib)
