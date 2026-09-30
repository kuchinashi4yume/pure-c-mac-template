cmake_minimum_required(VERSION 3.20)
project(hello-c LANGUAGES C)

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_executable(app main.c)