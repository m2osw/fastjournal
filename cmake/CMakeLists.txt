# Copyright (c) 2020-2024  Made to Order Software Corp.  All Rights Reserved
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

project(fastjournal_cmake)

install(
    FILES
        FastJournalConfig.cmake

    DESTINATION
        share/cmake/FastJournal
)

# vim: ts=4 sw=4 et nocindent
