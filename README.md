# Asynchronous Qt Assignment from Roman Narizhnyy

The application is developed under Windows 11 using Qt 6.8.3

## How to build on Windows (Release):
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release

cd build\Release
windeployqt Hamilton.exe --qmldir ..\..\qml
