obj = main.o
LUAINC = /home/linuxfor/Documents/Lua/source/lua-5.3.4/src
LUALIB = $(LUAINC)

main: $(obj)
	gcc -L $(LUALIB) -llua5.1 -o main $(obj)

$(obj): main.c
	gcc -c -I $(LUAINC) -o $(obj) main.c

# make clean
.PHONY: clean
clean:
	rm -rf main $(obj)
