
%.cpp.out: %.cpp
	g++ -g -o $@ $<

%.c.out: %.c
	gcc -g -o $@ $< \
	-I/usr/include/mysql -fdebug-prefix-map=/build/mysql-5.7-p7XPK2/mysql-5.7-5.7.17=. -fabi-version=2 -fno-omit-frame-pointer -L/usr/lib/x86_64-linux-gnu -lmysqlclient -lpthread -lz -lm -lrt -latomic -ldl

all:
	echo "Compiled"

clean:
	rm -rf *.out
