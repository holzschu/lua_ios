#! /bin/sh

LUAVERSION=lua-5.4.4

echo "Getting the reference source"
mkdir tmp
(cd tmp; curl https://www.lua.org/ftp/$LUAVERSION.tar.gz -O ; tar xfz $LUAVERSION.tar.gz ;  rm $LUAVERSION.tar.gz; cd ..)

echo "Computing the patches"
diff -Naur tmp/$LUAVERSION/src/lua.c $LUAVERSION/src/lua.c > patch_luac.txt
diff -Naur tmp/$LUAVERSION/src/luac.c $LUAVERSION/src/luac.c > patch_luacc.txt
diff -Naur tmp/$LUAVERSION/src/luaconf.h $LUAVERSION/src/luaconf.h > patch_luaconf.txt
diff -Naur tmp/$LUAVERSION/src/lauxlib.c $LUAVERSION/src/lauxlib.c > patch_lauxlibc.txt
diff -Naur tmp/$LUAVERSION/src/ldblib.c $LUAVERSION/src/ldblib.c > patch_ldblibc.txt
diff -Naur tmp/$LUAVERSION/src/liolib.c $LUAVERSION/src/liolib.c > patch_liolibc.txt
diff -Naur tmp/$LUAVERSION/src/loslib.c $LUAVERSION/src/loslib.c > patch_loslibc.txt
echo "Done. Cleanup:"
rm -rf tmp/
