# Lua for iOS shells and Command-Line-Interfaces

Minimal set of changes to [Lua](https://www.lua.org) so it can be called from within an iOS app within Apple API constraints:

- Xcode project to create dynamic libraries
- rename `main` to `lua_main` and `luac_main`
- rename `system` to `ios_system`
- erase all memory when leaving the program

# Instructions

- Run the shell script `get_lua_source.sh` with `sh get_lua_source.sh`. It will download the source and patch a few files.
- Run the shell script `compile_lua.sh`. This will create the `lua_ios.xcframework` binary framework. 


## Releasing xcframeworks

CI builds the xcframeworks on pull requests (except Markdown-only changes) and manual runs. It uploads the ZIPs, `checksums.txt` and `release.md` in the `xcframeworks` artifact. The build summary lists each slice and its architectures.

To release from this repository, push a `v*` tag, then wait for the "Publishing release" job. It creates a release with the generated notes, or adds the assets to an existing release while keeping its notes. Uploads fail if an asset already exists; published files are never overwritten. Only the release job has write permission.

Update each consuming `binaryTarget` URL and checksum with the new release and the values in `checksums.txt`.
