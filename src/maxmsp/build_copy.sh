MAX_PACKAGE_PATH="/Users/risse/Documents/Max 9/Packages"
PACKAGE_NAME="1dSAV"

cmake --build ./1dSAV/xcode/ --config "Release"

mkdir -p "$MAX_PACKAGE_PATH/$PACKAGE_NAME/externals"

rm -r "$MAX_PACKAGE_PATH/$PACKAGE_NAME/externals"
cp -r 1dSAV/externals/ "$MAX_PACKAGE_PATH/$PACKAGE_NAME/externals"
