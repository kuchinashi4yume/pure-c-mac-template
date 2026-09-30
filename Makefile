.PHONY: dev build run clean

dev:
	cmake -B build -G Ninja -DCMAKE_BUILD_TYPE=Debug
	cmake --build build
	$(MAKE) run

build:
	cmake -B build -G Ninja -DCMAKE_BUILD_TYPE=Release
	cmake --build build
	${MAKE} run

run:
	./build/app

clean:
	rm -rf .cache
	rm -rf build