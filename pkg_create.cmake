set(CPACK_PACKAGE_NAME a4tool-gmouse)

set(CPACK_PACKAGE_VERSION_MAJOR 0)
set(CPACK_PACKAGE_VERSION_MINOR 1)
set(CPACK_PACKAGE_VERSION_PATCH 0)

set(CPACK_PACKAGE_VENDOR "Marisa Chan")

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY
    "Tools for control your smart mouse. A4Tech G10-700F, and other Oscar mouse's.")

# Create debian package
set(CPACK_GENERATOR "DEB")

set(CPACK_DEBIAN_PACKAGE_DEPENDS "libusb-1.0-0 (>= 1.0)")

set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Marisa Chan")

set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "https://github.com/Marisa-Chan/init-gmouse")
set(CPACK_DEBIAN_PACKAGE_SECTION "misc")

# Must be last line
include(CPack)

