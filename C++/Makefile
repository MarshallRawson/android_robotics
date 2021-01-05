PROJECT := my_Cpp_project
G++ := arm-linux-gnueabi-g++ -static -Wall

ifndef install_root
	install_root := /data/local/tmp
endif

ifndef install_dir
	install_dir := $(install_root)/$(PROJECT)
endif

push: build dir_on_device
	adb push ./hello_world_cpp.o "$(install_dir)"

dir_on_device:
	adb shell mkdir -p $(install_dir)

build: hello_world_cpp.o

hello_world_cpp.o: hello_world.cpp
	$(G++) -o hello_world_cpp.o hello_world.cpp
