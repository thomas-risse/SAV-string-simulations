MAX_PACKAGE_PATH="/Users/risse/Documents/Max 9/Packages"
PACKAGE_NAME="1dSAV"

rm -rf ./1dSAV/build/ || true
mkdir -p ./1dSAV/build
cd ./1dSAV/build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . --config "Release"

mkdir -p "$MAX_PACKAGE_PATH/$PACKAGE_NAME/externals"

rm -r "$MAX_PACKAGE_PATH/$PACKAGE_NAME/externals"
cd ../../
cp -r 1dSAV/externals/ "$MAX_PACKAGE_PATH/$PACKAGE_NAME/externals"
