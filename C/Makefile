PROJECT := my_C_project
GCC := arm-linux-gnueabi-gcc -static -Wall

ifndef install_root
	install_root := /data/local/tmp
endif

ifndef install_dir
	install_dir := $(install_root)/$(PROJECT)
endif

push: build dir_on_device
	adb push ./hello_world.o "$(install_dir)"

dir_on_device:
	adb shell mkdir -p $(install_dir)

build: hello_world.o

hello_world.o: hello_world.c
	$(GCC) -o hello_world.o hello_world.c
