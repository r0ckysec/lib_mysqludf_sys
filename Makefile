LIBDIR=/usr/lib

install:
	gcc -DMYSQL_DYNAMIC_PLUGIN -fPIC -Wall -I /usr/include/mysql -I. -shared lib_mysqludf_sys.c -o lib_mysqludf_sys.so
