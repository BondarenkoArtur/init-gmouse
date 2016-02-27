cmake_minimum_required(VERSION 3.0)
project(a4tool)

include(paths.cmake)

add_subdirectory(libgmouse)
add_subdirectory(a4tool)
add_subdirectory(a4toold)

# Udev rules
install(FILES udev/10-a4tech-usb-devices.rules
    DESTINATION ${UDEV_DIR})

# Create deb-package
include(pkg_create.cmake)