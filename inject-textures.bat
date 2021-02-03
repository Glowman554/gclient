@echo off
mkdir tmp

copy %appdata%\.minecraft\versions\1.16.3\1.16.3.jar tmp\1.16.3.jar
cd tmp

mkdir orig
cd orig
..\..\tools\7za.exe x ..\1.16.3.jar
..\..\tools\7za.exe u ..\..\build\libs\mcp-reborn-1.0.0.jar assets
..\..\tools\7za.exe u ..\..\build\libs\mcp-reborn-1.0.0.jar data
..\..\tools\7za.exe u ..\..\build\libs\mcp-reborn-1.0.0.jar pack.png
..\..\tools\7za.exe u ..\..\build\libs\mcp-reborn-1.0.0.jar pack.mcmeta
cd ..\..\resources
..\tools\7za.exe u ..\build\libs\mcp-reborn-1.0.0.jar assets