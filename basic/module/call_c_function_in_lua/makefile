lib = mylib.so
LUAINC = /usr/local/include

$(lib): mylib.c
	gcc -fPIC -shared -Wall -I $(LUAINC) -o mylib.so mylib.c

# make clean
.PHONY: clean
clean:
	rm -rf $(lib)
