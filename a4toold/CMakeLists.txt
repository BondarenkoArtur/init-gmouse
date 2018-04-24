cmake_minimum_required(VERSION 3.0)

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/a4toold.sh.in
    ${CMAKE_CURRENT_BINARY_DIR}/a4toold.sh
    @ONLY)

install(FILES a4toold.conf
              Keyboard.png
              Mouse.png
    DESTINATION ${SHARE_DIR})

install(PROGRAMS ${CMAKE_CURRENT_BINARY_DIR}/a4toold.sh
    DESTINATION ${BIN_DIR})