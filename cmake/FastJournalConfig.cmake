# - Find LibFastJournal
#
# LIBFASTJOURNAL_FOUND        - System has LibFastJournal
# LIBFASTJOURNAL_INCLUDE_DIR  - The LibFastJournal include directories
# LIBFASTJOURNAL_LIBRARY      - The libraries needed to use LibFastJournal
# LIBFASTJOURNAL_DEFINITIONS  - Compiler switches required for using LibFastJournal
#
# License:
#
# Copyright (c) 2011-2022  Made to Order Software Corp.  All Rights Reserved
#
# https://snapwebsites.org/project/fastjournal
# contact@m2osw.com
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

find_path(
    LIBFASTJOURNAL_INCLUDE_DIR
        libfastjournal/libfastjournal.h

    PATHS
        ENV LIBFASTJOURNAL_INCLUDE_DIR
)
find_library(
    LIBFASTJOURNAL_LIBRARY
        fastjournal

    PATHS
        ${LIBFASTJOURNAL_LIBRARY_DIR}
        ENV LIBFASTJOURNAL_LIBRARY
)

mark_as_advanced(
    LIBFASTJOURNAL_INCLUDE_DIR
    LIBFASTJOURNAL_LIBRARY
)

set(LIBFASTJOURNAL_INCLUDE_DIRS ${LIBFASTJOURNAL_INCLUDE_DIR})
set(LIBFASTJOURNAL_LIBRARIES    ${LIBFASTJOURNAL_LIBRARY})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(
    LibFASTJOURNAL
    REQUIRED_VARS
        LIBFASTJOURNAL_INCLUDE_DIR
        LIBFASTJOURNAL_LIBRARY
)

# vim: ts=4 sw=4 et
