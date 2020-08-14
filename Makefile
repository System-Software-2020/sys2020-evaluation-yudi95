bin =ex1
obj =ex1.o ex2.o 
usrlib =/usr/lib/
usrinclude =/usr/include/
usrbin =/usr/bin/

C_FLAGS =-m32 -fno-pic -fno-pie
CC =gcc

all: $(obj)
	ar crs libex2.so $<
	$(CC) $(C_FLAGS) -L. $^ -o $(bin) 

install: 
	mv libex2.so $(prefix)$(usrlib)
	mv ex2.h $(prefix)$(usrinclude)
	mv $(bin) $(prefix)$(usrbin)

uninstall:
	rm $(prefix)$(usrinclude)ex2.h	
	rm $(prefix)$(usrlib)libex2.so
	rm $(prefix)$(usrbin)$(bin)

ex2.o: ex2.c
	$(CC) $(C_FLAGS) -c $<

ex1.o: ex1.c
	$(CC) $(C_FLAGS) -c $<

.PHONY: .clean

clean:
	rm -f *.o
	rm -f *.a
	rm -f $(bin)