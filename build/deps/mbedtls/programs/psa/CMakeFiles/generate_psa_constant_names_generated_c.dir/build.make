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

# Utility rule file for generate_psa_constant_names_generated_c.

# Include any custom commands dependencies for this target.
include deps/mbedtls/programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/mbedtls/programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/progress.make

deps/mbedtls/programs/psa/CMakeFiles/generate_psa_constant_names_generated_c: deps/mbedtls/programs/psa/psa_constant_names_generated.c

deps/mbedtls/programs/psa/psa_constant_names_generated.c: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/scripts/generate_psa_constants.py
deps/mbedtls/programs/psa/psa_constant_names_generated.c: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_values.h
deps/mbedtls/programs/psa/psa_constant_names_generated.c: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/psa/crypto_extra.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/jeremytubongbanua/GitHub/my_c_sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating psa_constant_names_generated.c"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls && /Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.9/bin/python3.9 /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/psa/../../scripts/generate_psa_constants.py /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/psa

generate_psa_constant_names_generated_c: deps/mbedtls/programs/psa/CMakeFiles/generate_psa_constant_names_generated_c
generate_psa_constant_names_generated_c: deps/mbedtls/programs/psa/psa_constant_names_generated.c
generate_psa_constant_names_generated_c: deps/mbedtls/programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/build.make
.PHONY : generate_psa_constant_names_generated_c

# Rule to build all files generated by this target.
deps/mbedtls/programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/build: generate_psa_constant_names_generated_c
.PHONY : deps/mbedtls/programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/build

deps/mbedtls/programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/clean:
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/psa && $(CMAKE_COMMAND) -P CMakeFiles/generate_psa_constant_names_generated_c.dir/cmake_clean.cmake
.PHONY : deps/mbedtls/programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/clean

deps/mbedtls/programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/depend:
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeremytubongbanua/GitHub/my_c_sockets /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/psa /Users/jeremytubongbanua/GitHub/my_c_sockets/build /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/psa /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/mbedtls/programs/psa/CMakeFiles/generate_psa_constant_names_generated_c.dir/depend

