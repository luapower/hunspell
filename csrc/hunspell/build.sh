[ "$PLATFORM" ] || exit 1 # this is a template script
cd src && g++ -O2 -static-libstdc++ -fvisibility=hidden $CFLAGS -shared -o ../../../bin/$PLATFORM/$LIBNAME -I. \
	-DHAVE_CONFIG_H -DBUILDING_LIBHUNSPELL=1 \
	affentry.cxx \
	affixmgr.cxx \
	csutil.cxx \
	dictmgr.cxx \
	hashmgr.cxx \
	hunspell.cxx \
	suggestmgr.cxx \
	phonet.cxx \
	filemgr.cxx \
	hunzip.cxx \
	replist.cxx \
	../extras.cxx
