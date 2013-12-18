cd src

#the combination -static-libgcc and -L. while only the static version of libstdc++ is in `pwd` makes for statically linking libstdc++
ln -sf "$(g++ -print-file-name=libstdc++.a)"

g++ -shared -O3 -s -static-libgcc -o ../../../linux/bin/libhunspell.so -I. -L. \
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

ldd linux/bin/libhunspell.so

linux/bin/luajit hunspell.lua
