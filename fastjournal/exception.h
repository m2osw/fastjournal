/*
 * Copyright (c) 2020-2023  Made to Order Software Corp.  All Rights Reserved
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
#pragma once

/** \file
 * \brief Declarations of the Fast Journal library specific exception.
 *
 * This file is the declarations of additional exceptions to the Fast
 * Journal library.
 */

// libexcept
//
#include <libexcept/exception.h>



namespace fastjournal
{


DECLARE_LOGIC_ERROR(fastjournal_logic_error);
DECLARE_OUT_OF_RANGE(fastjournal_out_of_range);
DECLARE_MAIN_EXCEPTION(fastjournal_error);

DECLARE_EXCEPTION(fastjournal_error, key_missing);




} // fastjournal namespace
// vim: ts=4 sw=4 et
