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
include deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/progress.make

# Include the compile flags for this target's objects.
include deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/flags.make

deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0.c: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/scripts/generate_test_code.py
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0.c: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.function
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0.c: deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.v0.data
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0.c: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/main_test.function
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0.c: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/host_test.function
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0.c: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/helpers.function
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0.c: deps/mbedtls/library/libmbedtls.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/jeremytubongbanua/GitHub/my_c_sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating test_suite_psa_crypto_storage_format.v0.c"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests && /Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.9/bin/python3.9 /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/scripts/generate_test_code.py -f /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.function -d /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.v0.data -t /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/main_test.function -p /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/host_test.function -s /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites --helpers-file /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/helpers.function -o .

deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/scripts/generate_psa_tests.py
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/scripts/mbedtls_dev/crypto_knowledge.py
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/scripts/mbedtls_dev/macro_collector.py
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/scripts/mbedtls_dev/psa_storage.py
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/scripts/mbedtls_dev/test_case.py
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/scripts/mbedtls_dev/test_data_generation.py
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_config.h
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_values.h
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_extra.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/jeremytubongbanua/GitHub/my_c_sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating suites/test_suite_psa_crypto_generate_key.generated.data, suites/test_suite_psa_crypto_not_supported.generated.data, suites/test_suite_psa_crypto_op_fail.generated.data, suites/test_suite_psa_crypto_storage_format.current.data, suites/test_suite_psa_crypto_storage_format.v0.data"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls && /Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.9/bin/python3.9 /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/../tests/scripts/generate_psa_tests.py --directory /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests/suites

deps/mbedtls/tests/suites/test_suite_psa_crypto_not_supported.generated.data: deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data
	@$(CMAKE_COMMAND) -E touch_nocreate deps/mbedtls/tests/suites/test_suite_psa_crypto_not_supported.generated.data

deps/mbedtls/tests/suites/test_suite_psa_crypto_op_fail.generated.data: deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data
	@$(CMAKE_COMMAND) -E touch_nocreate deps/mbedtls/tests/suites/test_suite_psa_crypto_op_fail.generated.data

deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.current.data: deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data
	@$(CMAKE_COMMAND) -E touch_nocreate deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.current.data

deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.v0.data: deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data
	@$(CMAKE_COMMAND) -E touch_nocreate deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.v0.data

deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.o: deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/flags.make
deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.o: deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0.c
deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.o: deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jeremytubongbanua/GitHub/my_c_sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.o"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.o -MF CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.o.d -o CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.o -c /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0.c

deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.i"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0.c > CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.i

deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.s"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0.c -o CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.s

# Object files for target test_suite_psa_crypto_storage_format.v0
test_suite_psa_crypto_storage_format_v0_OBJECTS = \
"CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.o"

# External object files for target test_suite_psa_crypto_storage_format.v0
test_suite_psa_crypto_storage_format_v0_EXTERNAL_OBJECTS = \
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
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o" \
"/Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/CMakeFiles/mbedtls_test_helpers.dir/tests/src/test_helpers/ssl_helpers.c.o"

deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/test_suite_psa_crypto_storage_format.v0.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/bignum_helpers.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_asymmetric_encryption.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_agreement.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_pake.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/CMakeFiles/mbedtls_test_helpers.dir/tests/src/test_helpers/ssl_helpers.c.o
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/build.make
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/library/libmbedtls.a
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/library/libmbedx509.a
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/library/libmbedcrypto.a
deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0: deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jeremytubongbanua/GitHub/my_c_sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable test_suite_psa_crypto_storage_format.v0"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/build: deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0
.PHONY : deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/build

deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/clean:
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/cmake_clean.cmake
.PHONY : deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/clean

deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/depend: deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data
deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/depend: deps/mbedtls/tests/suites/test_suite_psa_crypto_not_supported.generated.data
deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/depend: deps/mbedtls/tests/suites/test_suite_psa_crypto_op_fail.generated.data
deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/depend: deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.current.data
deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/depend: deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.v0.data
deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/depend: deps/mbedtls/tests/test_suite_psa_crypto_storage_format.v0.c
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeremytubongbanua/GitHub/my_c_sockets /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests /Users/jeremytubongbanua/GitHub/my_c_sockets/build /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/mbedtls/tests/CMakeFiles/test_suite_psa_crypto_storage_format.v0.dir/depend

