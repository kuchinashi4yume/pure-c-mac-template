# pure-c-mac-template
- **OS: macOS**

## How to create pure-c project

### Step 1: Install Xcode Command Line Tools, CMake, Ninja
```terminal
xcode-select --install
brew install cmake ninja
```

### Step 2: Create CMakeLists.txt
```cmake
cmake_minimum_required(VERSION 3.20)
project(hello-c LANGUAGES C)

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_executable(app main.c)
```

### Step 3: Create main.c
```c
#include <stdio.h>

int main(void) {
    printf("hello world\n");
    return 0;
}
```

### Step 4: Create Makefile (IMPORTANT: Use 'Tab' Key!)
```makefile
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
```

### Step 5: Makefile Usage Guide
```terminal
make dev

make build

make run

make clean
```

### Step 6: Done! Happy Coding!
