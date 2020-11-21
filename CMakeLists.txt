cmake_minimum_required(VERSION 3.1)

project(StarterProject CXX)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_library(${PROJECT_NAME} INTERFACE)
target_include_directories(${PROJECT_NAME} INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/include)

# testing
option(ENABLE_TESTING "Enable test builds" ON)
if (ENABLE_TESTING)
	include (test/Tests.cmake)
endif()