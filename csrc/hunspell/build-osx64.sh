export C="-arch x86_64 -mmacosx-version-min=10.4"
P=osx64 L="$C -install_name @loader_path/libhunspell.dylib" \
	D=libhunspell.dylib A=libhunspell.a ./build.sh
