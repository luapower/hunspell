PLATFORM=osx64 LIBNAME=libhunspell.dylib CXX=g++ \
    CFLAGS="-install_name @loader_path/libhunspell.dylib -arch x86_64 -mmacosx-version-min=10.4" ./build.sh
