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

# Utility rule file for test_suite_psa_generated_data.

# Include any custom commands dependencies for this target.
include deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data.dir/progress.make

deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data: deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data
deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data: deps/mbedtls/tests/suites/test_suite_psa_crypto_not_supported.generated.data
deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data: deps/mbedtls/tests/suites/test_suite_psa_crypto_op_fail.generated.data
deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data: deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.current.data
deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data: deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.v0.data

deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/scripts/generate_psa_tests.py
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/scripts/mbedtls_dev/crypto_knowledge.py
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/scripts/mbedtls_dev/macro_collector.py
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/scripts/mbedtls_dev/psa_storage.py
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/scripts/mbedtls_dev/test_case.py
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/scripts/mbedtls_dev/test_data_generation.py
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_config.h
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_values.h
deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_extra.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/jeremytubongbanua/GitHub/my_c_sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating suites/test_suite_psa_crypto_generate_key.generated.data, suites/test_suite_psa_crypto_not_supported.generated.data, suites/test_suite_psa_crypto_op_fail.generated.data, suites/test_suite_psa_crypto_storage_format.current.data, suites/test_suite_psa_crypto_storage_format.v0.data"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls && /Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.9/bin/python3.9 /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/../tests/scripts/generate_psa_tests.py --directory /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests/suites

deps/mbedtls/tests/suites/test_suite_psa_crypto_not_supported.generated.data: deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data
	@$(CMAKE_COMMAND) -E touch_nocreate deps/mbedtls/tests/suites/test_suite_psa_crypto_not_supported.generated.data

deps/mbedtls/tests/suites/test_suite_psa_crypto_op_fail.generated.data: deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data
	@$(CMAKE_COMMAND) -E touch_nocreate deps/mbedtls/tests/suites/test_suite_psa_crypto_op_fail.generated.data

deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.current.data: deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data
	@$(CMAKE_COMMAND) -E touch_nocreate deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.current.data

deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.v0.data: deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data
	@$(CMAKE_COMMAND) -E touch_nocreate deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.v0.data

test_suite_psa_generated_data: deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data
test_suite_psa_generated_data: deps/mbedtls/tests/suites/test_suite_psa_crypto_generate_key.generated.data
test_suite_psa_generated_data: deps/mbedtls/tests/suites/test_suite_psa_crypto_not_supported.generated.data
test_suite_psa_generated_data: deps/mbedtls/tests/suites/test_suite_psa_crypto_op_fail.generated.data
test_suite_psa_generated_data: deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.current.data
test_suite_psa_generated_data: deps/mbedtls/tests/suites/test_suite_psa_crypto_storage_format.v0.data
test_suite_psa_generated_data: deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data.dir/build.make
.PHONY : test_suite_psa_generated_data

# Rule to build all files generated by this target.
deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data.dir/build: test_suite_psa_generated_data
.PHONY : deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data.dir/build

deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data.dir/clean:
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_suite_psa_generated_data.dir/cmake_clean.cmake
.PHONY : deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data.dir/clean

deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data.dir/depend:
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeremytubongbanua/GitHub/my_c_sockets /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests /Users/jeremytubongbanua/GitHub/my_c_sockets/build /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/mbedtls/tests/CMakeFiles/test_suite_psa_generated_data.dir/depend

