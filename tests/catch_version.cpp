/*
 * Copyright (c) 2020-2023  Made to Order Software Corp.  All Rights Reserved
 *
 * https://snapwebsites.org/
 * contact@m2osw.com
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

// fastjournal
//
#include    <fastjournal/version.h>


// self
//
#include    "catch_main.h"


// last include
//
#include    <snapdev/poison.h>




CATCH_TEST_CASE("version", "[version]")
{
    CATCH_START_SECTION("version: verify runtime vs compile time version numbers")
    {
        CATCH_REQUIRE(fastjournal::get_major_version()   == LIBFASTJOURNAL_VERSION_MAJOR);
        CATCH_REQUIRE(fastjournal::get_release_version() == LIBFASTJOURNAL_VERSION_MINOR);
        CATCH_REQUIRE(fastjournal::get_patch_version()   == LIBFASTJOURNAL_VERSION_PATCH);
        CATCH_REQUIRE(strcmp(fastjournal::get_version_string(), LIBFASTJOURNAL_VERSION_STRING) == 0);
    }
    CATCH_END_SECTION()
}


// vim: ts=4 sw=4 et
