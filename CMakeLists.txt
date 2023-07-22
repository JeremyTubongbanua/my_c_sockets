cmake_minimum_required(VERSION 3.19)

project(my_c_sockets)

add_executable(main src/main.c)

target_sources(main PUBLIC src/connection.c)

target_include_directories(main PUBLIC ${CMAKE_SOURCE_DIR}/include)

add_subdirectory(${CMAKE_SOURCE_DIR}/deps/mbedtls)
target_include_directories(main PUBLIC ${CMAKE_SOURCE_DIR}/deps/mbedtls/include)
target_link_libraries(main PUBLIC mbedcrypto mbedtls mbedx509)

# set(MbedTLS_DIR ${CMAKE_SOURCE_DIR}/deps/mbedtls/cmake)
# find_package(MbedTLS REQUIRED)
# target_link_libraries(main PUBLIC MbedTLS::mbedcrypto MbedTLS::mbedtls MbedTLS::mbedx509)
# target_include_directories(main PUBLIC ${CMAKE_SOURCE_DIR}/deps/mbedtls/include)

install(
    TARGETS main
    DESTINATION ${CMAKE_SOURCE_DIR}/bin
)