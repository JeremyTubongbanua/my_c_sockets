# Install script for directory: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/aes.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/aria.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/asn1.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/asn1write.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/base64.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/bignum.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/build_info.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/camellia.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/ccm.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/chacha20.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/chachapoly.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/check_config.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/cipher.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/cmac.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/compat-2.x.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/config_psa.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/constant_time.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/ctr_drbg.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/debug.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/des.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/dhm.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/ecdh.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/ecdsa.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/ecjpake.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/ecp.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/entropy.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/error.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/gcm.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/hkdf.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/hmac_drbg.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/lms.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/mbedtls_config.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/md.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/md5.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/net_sockets.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/nist_kw.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/oid.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/pem.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/pk.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/pkcs12.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/pkcs5.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/pkcs7.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/platform.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/platform_time.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/platform_util.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/poly1305.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/private_access.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/psa_util.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/ripemd160.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/rsa.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/sha1.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/sha256.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/sha3.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/sha512.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/ssl.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/ssl_cache.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/ssl_cookie.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/ssl_ticket.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/threading.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/timing.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/version.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/x509.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/x509_crl.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/x509_crt.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/build_info.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_builtin_composites.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_builtin_key_derivation.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_builtin_primitives.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_compat.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_config.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_driver_common.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_driver_contexts_key_derivation.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_extra.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_legacy.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_platform.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_se_driver.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_sizes.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_struct.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_types.h"
    "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_values.h"
    )
endif()

