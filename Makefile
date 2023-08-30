obj-m += naga.o

.PHONY: build
build:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD)/build src=$(PWD) modules

.PHONY: clean
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	rm -rf build

.PHONY: insmod
insmod: build
	@echo "Are you root?"
	insmod build/naga.ko

.PHONY: rmmod
rmmod:
	@echo "Are you root?"
	rmmod naga
