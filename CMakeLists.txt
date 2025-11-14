cmake_minimum_required(VERSION 3.16)

project(Hamilton VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)

find_package(Qt6 6.8 COMPONENTS Core Gui Qml REQUIRED)

add_executable(Hamilton
    main.cpp
)

qt_add_qml_module(Hamilton
    URI Hamilton
    VERSION 1.0
    QML_FILES
        qml/Main.qml
        qml/components/HButton.qml
        qml/components/IconHButton.qml
        qml/components/IconTextHButton.qml
    RESOURCES
        images/file-video.svg
        images/file-waveform.svg
        images/file-word.svg
        images/file-zipper.svg
        images/fill-drip.svg
        images/fill.svg
        images/film.svg
        images/filter-circle-dollar.svg
        images/filter-circle-xmark.svg
        images/filter.svg
)

target_link_libraries(Hamilton PRIVATE Qt6::Core Qt6::Gui Qt6::Qml)