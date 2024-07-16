vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Scrap-Mods/SmSdk
    REF 79c38e542543fe5a4ee970b10a597a0254bab545
    SHA512 0
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/${PORT})

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")