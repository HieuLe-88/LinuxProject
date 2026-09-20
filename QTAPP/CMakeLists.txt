cmake_minimum_required(VERSION 3.16)
project(QtQmlApp LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appQtQmlApp
    main.cpp
)

qt_add_qml_module(appQtQmlApp
    URI MyQmlApp
    VERSION 1.0
    QML_FILES main.qml
)

target_link_libraries(appQtQmlApp PRIVATE Qt6::Quick)