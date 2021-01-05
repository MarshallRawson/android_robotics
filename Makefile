push: bash_push C_push Cpp_push Rust_push

bash_push: ./bash
	./bash/push

C_push: ./C C_build
	make push -C ./C

Cpp_push: ./C++ Cpp_build
	make push -C ./C++

Rust_push: ./Rust Rust_build
	bash -c "cd ./Rust/rust_x && ./push"


build: C_build Cpp_build Rust_build

C_build: ./C
	make build -C ./C

Cpp_build: ./C++
	make build -C ./C++

Rust_build: ./Rust
	bash -c "cd ./Rust/rust_x && ./build"
