#include <gtest/gtest.h>
#include "../src/math_utils.h"
#include "mathlib.h"

TEST(MathUtilsTest, AddWorksCorrectly) {
    EXPECT_EQ(add(2, 3), 5);
}

TEST(MathlibTest, AddWorksCorrectly) {
    EXPECT_EQ(mathlib_add(3, 4), 7);
}