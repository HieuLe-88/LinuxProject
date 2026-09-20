import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "Qt QML on WSL"

    Rectangle {
        anchors.fill: parent
        color: "#2d3748"

        Column {
            anchors.centerIn: parent
            spacing: 20

            Text {
                text: "Hello from Qt QML in WSL!"
                color: "#ffffff"
                font.pixelSize: 18
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                text: "Click Me"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    console.log("Button clicked from QML!");
                }
            }
        }
    }
}