import QtQuick
import QtQuick.Controls

Item{
    id: root
    width: 100
    height: 100

    Rectangle {
        id: buttonBackground
        anchors.fill: parent
        color: "black"
        radius: 18

        Image{
            id: buttonIcon
            anchors.fill: parent
            source: "qrc:/images/file-video.svg"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Hamilton Button Clicked")
            }
            hoverEnabled: true
            onEntered: buttonBackground.color = "#45a049"
            onExited: buttonBackground.color = "#4CAF50"
        }
    }
}