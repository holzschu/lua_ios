#! /bin/sh

LUAVERSION=lua-5.3.4

curl https://www.lua.org/ftp/$LUAVERSION.tar.gz -O
tar xfz $LUAVERSION.tar.gz
rm $LUAVERSION.tar.gz
# get ios_system.framework
echo "Downloading ios_system.framework"
curl -OL $HHROOT/ios_system/releases/download/v$IOS_SYSTEM_VER/smallRelease.tar.gz
( tar -xzf smallRelease.tar.gz --strip 1 && rm smallRelease.tar.gz ) || { echo "ios_system failed to download"; exit 1; }


# Patch sources:
patch $LUAVERSION/src/lua.c < patch_luac.txt
patch $LUAVERSION/src/luac.c < patch_luacc.txt
patch $LUAVERSION/src/luaconf.h < patch_luaconf.txt
patch $LUAVERSION/src/lauxlib.c < patch_lauxlibc.txt
patch $LUAVERSION/src/ldblib.c < patch_ldblibc.txt
patch $LUAVERSION/src/liolib.c < patch_liolibc.txt
patch $LUAVERSION/src/loslib.c < patch_loslibc.txt


