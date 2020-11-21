#include <gmock/gmock.h>
#include <gtest/gtest.h>

using namespace ::testing;

TEST(FirstTest, FirstTestCase)
{
	ASSERT_THAT(true, Eq(true));
}
