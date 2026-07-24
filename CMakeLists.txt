cmake_minimum_required(VERSION 3.10)
project(demo)
add_executable(demo src/main.cpp)

enable_testing()
add_executable(test_add tests/test_add.cpp)
add_test(NAME AddTest COMMAND test_add)