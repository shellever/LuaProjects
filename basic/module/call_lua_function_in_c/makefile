obj = main.o
LUAINC := /usr/local/include
LUALIB := /usr/local/lib

main: $(obj)
	gcc -o main $(obj) -L $(LUALIB) -llua
	#gcc -L $(LUALIB) -llua -o main $(obj)

$(obj): main.c
	gcc -c -I $(LUAINC) -o $(obj) main.c


# make clean
.PHONY: clean
clean:
	rm -rf main $(obj)
