#define BOOST_TEST_MODULE CustomSumTest

#include "../include/CustomSum.hpp"

#define BOOST_TEST_DYN_LINK
#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_SUITE(QuickTestSuite)

BOOST_AUTO_TEST_CASE(SumTest)
{
    CustomSum customSum;

    BOOST_CHECK_EQUAL(customSum.sum(1, 2, 3), 6);
}
BOOST_AUTO_TEST_SUITE_END()
