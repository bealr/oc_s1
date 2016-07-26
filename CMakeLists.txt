cmake_minimum_required(VERSION 3.5)
project(salle1_screen)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES main.cpp)
add_executable(salle1_screen ${SOURCE_FILES})