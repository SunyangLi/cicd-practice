cmake_minimum_required(VERSION 3.10)
project(demo)

# 依赖库路径,默认指向项目根目录下的 vendor/,可以用 -DMATHLIB_ROOT=xxx 覆盖
set(MATHLIB_ROOT "${CMAKE_SOURCE_DIR}/vendor" CACHE PATH "Path to prebuilt mathlib")

add_executable(demo src/main.cpp)
target_include_directories(demo PRIVATE ${MATHLIB_ROOT})
target_link_libraries(demo PRIVATE ${MATHLIB_ROOT}/mathlib.lib)

enable_testing()
add_executable(test_add tests/test_add.cpp)
target_include_directories(test_add PRIVATE ${MATHLIB_ROOT})
target_link_libraries(test_add PRIVATE ${MATHLIB_ROOT}/mathlib.lib)
add_test(NAME AddTest COMMAND test_add)