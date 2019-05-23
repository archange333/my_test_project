find_package(Boost REQUIRED COMPONENTS unit_test_framework)
include_directories("${PROJECT_SOURCE_DIR}/include" "${PROJECT_SOURCE_DIR}/test/include")

set(TEST_SOURCES ${PROJECT_SOURCE_DIR}/test/src/CustomSumTest.cpp)
set(TEST_LIBS CustomSum)

add_executable(test_custom_sum_main ${TEST_SOURCES})
target_link_libraries(test_custom_sum_main ${TEST_LIBS} ${Boost_LIBRARIES})
add_test(CustomSumTest test_custom_sum_main COMMAND test_custom_sum_main)
