cmake_minimum_required(VERSION 3.0)

find_package(PkgConfig)
pkg_search_module(LibUsb REQUIRED libusb-1.0)

set(LIBGMOUSE_SOURCES
    control_a4.cpp
    dpis.cpp
    mouse_memory.cpp
    pairing.cpp
    system_a4.cpp)

add_library(gmouse SHARED ${LIBGMOUSE_SOURCES})
target_link_libraries(gmouse ${LibUsb_LIBRARIES})

install(PROGRAMS $<TARGET_FILE:gmouse>
    DESTINATION /usr/lib)