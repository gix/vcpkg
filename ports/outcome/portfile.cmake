# header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO ned14/outcome
    REF e64a5539c7b0416184cf9c7f82aeacc988b01229
    SHA512 05a759503891e7d12e1ef8b154a4e86fe282c7a69de3137c73138da2294f5e0dea7d90eda8071666b46e973e522a827a27d036bf5d0c7c1c2e1d5e871e4a1db9
    HEAD_REF develop
    PATCHES
        fix-msvc-compiler-error.patch
)

file(GLOB_RECURSE OUTCOME_HEADERS "${SOURCE_PATH}/single-header/*.hpp")
file(INSTALL ${OUTCOME_HEADERS} DESTINATION ${CURRENT_PACKAGES_DIR}/include)

file(INSTALL ${SOURCE_PATH}/Licence.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
