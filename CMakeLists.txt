cmake_minimum_required(VERSION 3.10)
project(demo)

# 依赖库路径,默认指向项目根目录下的 vendor/,可以用 -DMATHLIB_ROOT=xxx 覆盖
set(MATHLIB_ROOT "${CMAKE_SOURCE_DIR}/vendor" CACHE PATH "Path to prebuilt mathlib")

if(WIN32)
    set(MATHLIB_LIB "${MATHLIB_ROOT}/mathlib.lib")
else()
    set(MATHLIB_LIB "${MATHLIB_ROOT}/libmathlib.a")
endif()

add_executable(demo src/main.cpp)
target_include_directories(demo PRIVATE ${MATHLIB_ROOT})
target_link_libraries(demo PRIVATE ${MATHLIB_ROOT}/mathlib.lib)

# ---- gtest 部分 ----
find_package(GTest CONFIG REQUIRED)

enable_testing()
add_executable(test_add tests/test_add.cpp)
target_include_directories(test_add PRIVATE ${MATHLIB_ROOT})
target_link_libraries(test_add PRIVATE ${MATHLIB_LIB}
                      GTest::gtest
                      GTest::gtest_main)

include(GoogleTest)
gtest_discover_tests(test_add)