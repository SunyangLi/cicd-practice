#include "../src/math_utils.h"
#include <cassert>
#include <iostream>
#include "mathlib.h"
int main() {
    if (add(2, 3) != 5) {
        std::cerr << "FAIL: add(2,3) expected 5" << std::endl;
        return 1;   // 非 0 返回值 = 测试失败
    }
    int result = mathlib_add(3, 4);
    assert(result == 7);
    std::cout << "AddTest passed: 3 + 4 = " << result << std::endl;
    return 0;   // 返回 0 表示测试通过,CTest 靠这个判断成功/失败
    std::cout << "PASS: add test" << std::endl;
    return 0;
}