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

# Utility rule file for generate_query_config_c.

# Include any custom commands dependencies for this target.
include deps/mbedtls/programs/test/CMakeFiles/generate_query_config_c.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/mbedtls/programs/test/CMakeFiles/generate_query_config_c.dir/progress.make

deps/mbedtls/programs/test/CMakeFiles/generate_query_config_c: deps/mbedtls/programs/test/query_config.c

deps/mbedtls/programs/test/query_config.c: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/scripts/generate_query_config.pl
deps/mbedtls/programs/test/query_config.c: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/include/mbedtls/mbedtls_config.h
deps/mbedtls/programs/test/query_config.c: /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/scripts/data_files/query_config.fmt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/jeremytubongbanua/GitHub/my_c_sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating query_config.c"
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/test && /usr/bin/perl /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/test/../../scripts/generate_query_config.pl /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/test/../../include/mbedtls/mbedtls_config.h /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/test/../../scripts/data_files/query_config.fmt /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/test/query_config.c

generate_query_config_c: deps/mbedtls/programs/test/CMakeFiles/generate_query_config_c
generate_query_config_c: deps/mbedtls/programs/test/query_config.c
generate_query_config_c: deps/mbedtls/programs/test/CMakeFiles/generate_query_config_c.dir/build.make
.PHONY : generate_query_config_c

# Rule to build all files generated by this target.
deps/mbedtls/programs/test/CMakeFiles/generate_query_config_c.dir/build: generate_query_config_c
.PHONY : deps/mbedtls/programs/test/CMakeFiles/generate_query_config_c.dir/build

deps/mbedtls/programs/test/CMakeFiles/generate_query_config_c.dir/clean:
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/test && $(CMAKE_COMMAND) -P CMakeFiles/generate_query_config_c.dir/cmake_clean.cmake
.PHONY : deps/mbedtls/programs/test/CMakeFiles/generate_query_config_c.dir/clean

deps/mbedtls/programs/test/CMakeFiles/generate_query_config_c.dir/depend:
	cd /Users/jeremytubongbanua/GitHub/my_c_sockets/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeremytubongbanua/GitHub/my_c_sockets /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/programs/test /Users/jeremytubongbanua/GitHub/my_c_sockets/build /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/test /Users/jeremytubongbanua/GitHub/my_c_sockets/build/deps/mbedtls/programs/test/CMakeFiles/generate_query_config_c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/mbedtls/programs/test/CMakeFiles/generate_query_config_c.dir/depend
