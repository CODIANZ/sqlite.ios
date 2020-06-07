
if [ ! -d ./build/lib ]; then
mkdir -p ./build/lib
fi

pushd ./build/lib

#  Run the configure script
sh ../../sqlite/configure

# Build the "amalgamation" source file
make sqlite3.c

popd

cp ./build/lib/sqlite3.c .
cp ./build/lib/sqlite3.h .
