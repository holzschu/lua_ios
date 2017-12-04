#! /bin/sh

LUAVERSION=lua-5.3.4

curl https://www.lua.org/ftp/$LUAVERSION.tar.gz -O
tar xfz $LUAVERSION.tar.gz
rm $LUAVERSION.tar.gz

# Patch sources:
patch $LUAVERSION/src/lua.c < patch_luac.txt
patch $LUAVERSION/src/luac.c < patch_luacc.txt
patch $LUAVERSION/src/luaconf.h < patch_luaconf.txt

