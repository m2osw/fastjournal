#!/bin/sh
#
# Sample script to run make without having to retype the long path each time
# This will work if you built the environment using our ~/bin/build-snap script

PROCESSORS=`nproc`

case $1 in
"-l")
	make -C ../../../BUILD/contrib/fastjournal 2>&1 | less -SR
	;;

"-d")
	rm -rf ../../../BUILD/contrib/fastjournal/doc/fastjournal-doc-1.0.tar.gz
	make -C ../../../BUILD/contrib/fastjournal
	;;

"-i")
	make -j${PROCESSORS} -C ../../../BUILD/contrib/fastjournal install
	;;

"-c")
	dev/coverage
	;;

"-t")
	(
		if make -j${PROCESSORS} -C ../../../BUILD/contrib/fastjournal
		then
			shift
			../../../BUILD/contrib/fastjournal/tests/unittest --progress $*
		fi
	) 2>&1 | less -SR
	;;

"")
	make -j${PROCESSORS} -C ../../../BUILD/contrib/fastjournal
	;;

*)
	echo "error: unknown command line option \"$1\""
	;;

esac
