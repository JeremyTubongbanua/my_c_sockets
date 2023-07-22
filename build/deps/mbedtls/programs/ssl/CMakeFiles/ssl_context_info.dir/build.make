# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jeremytubongbanua/GitHub/my_c_sockets

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jeremytubongbanua/GitHub/my_c_sockets/build

# Include any dependencies generated for this target.
include deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/progress.make

# Include the compile flags for this target's objects.
include deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/flags.make

deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o: deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/flags.make
deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/ssl/ssl_context_info.c
deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o: deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jeremytubongbanua/GitHub/my_c_sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/ssl && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o -MF CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o.d -o CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o -c /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/ssl/ssl_context_info.c

deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ssl_context_info.dir/ssl_context_info.c.i"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/ssl && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/ssl/ssl_context_info.c > CMakeFiles/ssl_context_info.dir/ssl_context_info.c.i

deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ssl_context_info.dir/ssl_context_info.c.s"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/ssl && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/ssl/ssl_context_info.c -o CMakeFiles/ssl_context_info.dir/ssl_context_info.c.s

# Object files for target ssl_context_info
ssl_context_info_OBJECTS = \
"CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o"

# External object files for target ssl_context_info
ssl_context_info_EXTERNAL_OBJECTS = \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/bignum_helpers.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_asymmetric_encryption.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_agreement.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_pake.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o"

deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/ssl_context_info.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/bignum_helpers.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_asymmetric_encryption.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_agreement.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_pake.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/build.make
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/library/libmbedtls.a
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/library/libmbedx509.a
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/library/libmbedcrypto.a
deps/mbedtls/programs/ssl/ssl_context_info: deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jeremytubongbanua/GitHub/my_c_sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ssl_context_info"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/ssl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ssl_context_info.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/build: deps/mbedtls/programs/ssl/ssl_context_info
.PHONY : deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/build

deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/clean:
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/ssl && $(CMAKE_COMMAND) -P CMakeFiles/ssl_context_info.dir/cmake_clean.cmake
.PHONY : deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/clean

deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/depend:
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeremytubongbanua/GitHub/my_c_sockets /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/ssl /Users/jeremytubongbanua/GitHub/my_c_sockets/build /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/ssl /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/mbedtls/programs/ssl/CMakeFiles/ssl_context_info.dir/depend
