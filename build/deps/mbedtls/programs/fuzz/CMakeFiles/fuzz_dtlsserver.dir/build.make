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
include deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/progress.make

# Include the compile flags for this target's objects.
include deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/flags.make

deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.o: deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/flags.make
deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.o: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/fuzz/fuzz_dtlsserver.c
deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.o: deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jeremytubongbanua/GitHub/my_c_sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.o"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/fuzz && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.o -MF CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.o.d -o CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.o -c /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/fuzz/fuzz_dtlsserver.c

deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.i"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/fuzz && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/fuzz/fuzz_dtlsserver.c > CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.i

deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.s"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/fuzz && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/fuzz/fuzz_dtlsserver.c -o CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.s

deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/onefile.c.o: deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/flags.make
deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/onefile.c.o: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/fuzz/onefile.c
deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/onefile.c.o: deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jeremytubongbanua/GitHub/my_c_sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/onefile.c.o"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/fuzz && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/onefile.c.o -MF CMakeFiles/fuzz_dtlsserver.dir/onefile.c.o.d -o CMakeFiles/fuzz_dtlsserver.dir/onefile.c.o -c /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/fuzz/onefile.c

deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/onefile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fuzz_dtlsserver.dir/onefile.c.i"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/fuzz && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/fuzz/onefile.c > CMakeFiles/fuzz_dtlsserver.dir/onefile.c.i

deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/onefile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fuzz_dtlsserver.dir/onefile.c.s"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/fuzz && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/fuzz/onefile.c -o CMakeFiles/fuzz_dtlsserver.dir/onefile.c.s

deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/common.c.o: deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/flags.make
deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/common.c.o: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/fuzz/common.c
deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/common.c.o: deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jeremytubongbanua/GitHub/my_c_sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/common.c.o"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/fuzz && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/common.c.o -MF CMakeFiles/fuzz_dtlsserver.dir/common.c.o.d -o CMakeFiles/fuzz_dtlsserver.dir/common.c.o -c /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/fuzz/common.c

deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fuzz_dtlsserver.dir/common.c.i"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/fuzz && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/fuzz/common.c > CMakeFiles/fuzz_dtlsserver.dir/common.c.i

deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fuzz_dtlsserver.dir/common.c.s"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/fuzz && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/fuzz/common.c -o CMakeFiles/fuzz_dtlsserver.dir/common.c.s

# Object files for target fuzz_dtlsserver
fuzz_dtlsserver_OBJECTS = \
"CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.o" \
"CMakeFiles/fuzz_dtlsserver.dir/onefile.c.o" \
"CMakeFiles/fuzz_dtlsserver.dir/common.c.o"

# External object files for target fuzz_dtlsserver
fuzz_dtlsserver_EXTERNAL_OBJECTS = \
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

deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/fuzz_dtlsserver.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/onefile.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/common.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/bignum_helpers.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_asymmetric_encryption.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_agreement.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_pake.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/build.make
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/library/libmbedtls.a
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/library/libmbedx509.a
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/library/libmbedcrypto.a
deps/mbedtls/programs/fuzz/fuzz_dtlsserver: deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jeremytubongbanua/GitHub/my_c_sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable fuzz_dtlsserver"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/fuzz && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fuzz_dtlsserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/build: deps/mbedtls/programs/fuzz/fuzz_dtlsserver
.PHONY : deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/build

deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/clean:
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/fuzz && $(CMAKE_COMMAND) -P CMakeFiles/fuzz_dtlsserver.dir/cmake_clean.cmake
.PHONY : deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/clean

deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/depend:
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeremytubongbanua/GitHub/my_c_sockets /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/fuzz /Users/jeremytubongbanua/GitHub/my_c_sockets/build /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/fuzz /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/mbedtls/programs/fuzz/CMakeFiles/fuzz_dtlsserver.dir/depend

