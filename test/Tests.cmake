include(cmake/conan.cmake)

conan_cmake_run(REQUIRES gtest/1.10.0
				BASIC_SETUP CMAKE_TARGETS
				BUILD missing)


# testing
option(ENABLE_TESTING "Enable test builds" ON)
if (ENABLE_TESTING)
set(PROJECT_TEST_NAME ${PROJECT_NAME}Test)

add_executable(${PROJECT_TEST_NAME})

target_sources(${PROJECT_TEST_NAME}
PRIVATE
	${CMAKE_CURRENT_SOURCE_DIR}/test/FirstTest.cpp
	)
	
target_link_libraries(${PROJECT_TEST_NAME} CONAN_PKG::gtest ${PROJECT_NAME})

enable_testing()

add_test(NAME ${PROJECT_TEST_NAME} COMMAND ${PROJECT_BINARY_DIR}/bin/${PROJECT_TEST_NAME})
endif()