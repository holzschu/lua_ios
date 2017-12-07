# Lua for iOS shells and Command-Line-Interfaces

Minimal set of changes to [Lua](https://www.lua.org) so it can be called from within an iOS app within Apple API constraints:

- Xcode project to create dynamic libraries
- rename `main` to `lua_main` and `luac_main`
- rename `system` to `ios_system`
- erase all memory when leaving the program

# Instructions

- Run the shell script `get_lua_source.sh` with `sh get_lua_source.sh`. It will download the source and patch a few files.
- open `lua_ios.xcodeproj`
- hit "Build" in Xcode.
- you're done. You now have a `lua.framework` that you can link with your projects.
- if you plan to call system commands from lua (`ls`, `rmdir`, `curl`...) you will need to link with the [ios_system](https://github.com/holzschu/ios_system) framework. Same if you want to call lua commands using `system()` calls. 
- if you only need Lua without any calls to system functions, comment calls to `system()` and do not link with `ios_system`. 


