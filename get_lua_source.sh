#! /bin/sh
set -eu

HHROOT="https://github.com/holzschu"
LUAVERSION=lua-5.4.4
IOS_SYSTEM_VER=3.0.3

curl --fail --location --retry 3 https://www.lua.org/ftp/$LUAVERSION.tar.gz -O
echo "164c7849653b80ae67bec4b7473b884bf5cc8d2dca05653475ec2ed27b9ebf61  $LUAVERSION.tar.gz" | shasum -a 256 -c -
tar xfz $LUAVERSION.tar.gz
rm $LUAVERSION.tar.gz
# get ios_system.framework
echo "Downloading header file:"
curl --fail --location --retry 3 -O $HHROOT/ios_system/releases/download/v$IOS_SYSTEM_VER/ios_error.h


# Patch sources:
patch $LUAVERSION/src/lua.c < patch_luac.txt
patch $LUAVERSION/src/luac.c < patch_luacc.txt
patch $LUAVERSION/src/luaconf.h < patch_luaconf.txt
patch $LUAVERSION/src/lauxlib.c < patch_lauxlibc.txt
patch $LUAVERSION/src/ldblib.c < patch_ldblibc.txt
patch $LUAVERSION/src/liolib.c < patch_liolibc.txt
patch $LUAVERSION/src/loslib.c < patch_loslibc.txt


