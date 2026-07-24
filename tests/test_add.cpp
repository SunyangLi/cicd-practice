#include "../src/math_utils.h"
#include <cassert>
#include <iostream>

int main() {
    if (add(2, 3) != 5) {
        std::cerr << "FAIL: add(2,3) expected 5" << std::endl;
        return 1;   // 非 0 返回值 = 测试失败
    }
    std::cout << "PASS: add test" << std::endl;
    return 0;
}