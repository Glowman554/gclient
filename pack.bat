@echo off

cd tmp
mkdir gclient-1.16.3
cd gclient-1.16.3
copy ..\..\build\libs\mcp-reborn-1.0.0.jar gclient-1.16.3.jar
copy ..\..\resources\gclient-1.16.3.json gclient-1.16.3.json
cd ..
..\tools\7za.exe a -tzip gclient-1.16.3.zip gclient-1.16.3
cd ..