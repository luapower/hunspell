cd src

# NOTE: the combination -static-libgcc and -L. while only the static version of libstdc++
# is in `pwd` makes for statically linking libstdc++.

ln -sf "$(g++ -print-file-name=libstdc++.a)"

g++ -O2 -s -static-libgcc -static-libstdc++ -shared -o ../../../bin/linux32/libhunspell.so -I. -L. \
	-DHAVE_CONFIG_H -fvisibility=hidden -DBUILDING_LIBHUNSPELL=1 \
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

rm -f libstdc++.a
cd ../../..

# check that libstdc++ is not a dependency
ldd bin/linux32/libhunspell.so | grep libstdc++

#linux/bin/luajit hunspell.lua
