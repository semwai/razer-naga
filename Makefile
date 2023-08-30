obj-m += naga.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD)/build src=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
