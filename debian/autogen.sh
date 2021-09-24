#!/bin/sh
#
# autogen.sh glue for hplip
#
# Requires: automake 1.9, autoconf 2.57+, libtool 1.5.6+
# Conflicts: autoconf 2.13
set -e

# Refresh GNU autotools toolchain.
echo Cleaning autotools files...
find -type d -name autom4te.cache -print0 | xargs -0 rm -rf \;
find -type f \( -name missing -o -name install-sh -o -name mkinstalldirs \
	-o -name depcomp -o -name ltmain.sh -o -name configure \
	-o -name config.sub -o -name config.guess -o -name config.cache \
	-o -name config.log -o -name Makefile.in \) -print0 | xargs -0 rm -f

touch NEWS README AUTHORS ChangeLog INSTALL

echo Running autoreconf...
autoreconf --force --install

exit 0
