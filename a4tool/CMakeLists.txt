cmake_minimum_required(VERSION 3.0)

add_executable(a4tool main.cpp)
target_include_directories(a4tool
    PUBLIC ../include)
target_link_libraries(a4tool gmouse)

install(PROGRAMS $<TARGET_FILE:a4tool>
    DESTINATION /usr/bin)