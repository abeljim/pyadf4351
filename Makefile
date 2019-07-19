LIB_DIR = lib

default: pyadf4351

pyadf4351: setup.py pyadf4351.pyx $(LIB_DIR)/libadf4351.a
	python3 setup.py build_ext --inplace && rm -f pyadf4351.c && rm -Rf build

$(LIB_DIR)/libadf4351.a:
	make -C $(LIB_DIR) libadf4351.a

clean:
	rm -f *.so
