Run this to install cmake
sudo apt update && sudo apt install -y qt6-base-dev qt6-declarative-dev qml6-module-qtquick-controls qml6-module-qtquick-layouts

sudo apt update && sudo apt install -y libxkbcommon-dev

sudo apt update && sudo apt install -y qml6-module-qtquick

sudo apt update && sudo apt install -y qml6-module-qtqml-workerscript

sudo apt update && sudo apt install -y qml6-module-qtquick-templates

sudo apt install -y qml6-module-qtquick-controls

sudo apt update && sudo apt install -y qml6-module-qtquick-window qml6-module-qtquick-controls qml6-module-qtquick-templates qml6-module-qtquick-layouts qml6-module-qtqml-workerscript

# Configure build directory
rm -rf build
cmake -B build -S . -DCMAKE_BUILD_TYPE=Debug

# Build executable
cmake --build build

# Execute app via WSLg GUI
./build/appQtQmlApp
