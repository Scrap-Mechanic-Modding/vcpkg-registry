set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Scrap-Mods/SmSdk
    REF 79c38e542543fe5a4ee970b10a597a0254bab545
    SHA512 ab34129300fe09a15cfdf7ad58d27a726cabc5380f1ad3e7df5cca6d3233265373d5ceb2227affc1d88141564fa230d79fed7a5b1c795a18363ca0f05770f1ad
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/${PORT})

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")