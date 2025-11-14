# Asynchronous Qt Assignment from Roman Narizhnyy

The application is developed under Windows 11 using Qt 6.8.3

## How to build on Windows (Release):
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release

cd build\Release
windeployqt Hamilton.exe --qmldir ..\..\qml

# Points need to be done:
- Icons should be colorized (this can be done using QML effects)
- missing animation of the buttons opacity and lower image scale