# Lua for iOS shells and Command-Line-Interfaces

Minimal set of changes to [Lua](https://www.lua.org) so it can be called from within an iOS app within Apple API constraints:

- Xcode project to create dynamic libraries
- rename `main` to `lua_main` and `luac_main`
- rename `system` to `ios_system`
- erase all memory when leaving the program

# Instructions

- Run the shell script `get_lua_source.sh` with `sh get_lua_source.sh`. It will download the source and patch a few files.
- Run the shell script `compile_lua.sh`. This will create the `lua_ios.xcframework` binary framework. 

