PLATFORM=osx32 LIBNAME=libhunspell.dylib CXX=g++ \
    CFLAGS="-install_name @loader_path/libhunspell.dylib -arch i386 -mmacosx-version-min=10.4" ./build.sh
