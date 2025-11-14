import QtQuick
import QtQuick.Controls

Item{
    id: root
    width: 72
    height: 72

    Rectangle {
        id: borderShifted
        width: parent.width
        height: parent.height
        color: "#696969"
        radius: 18
    }

    Rectangle {
        id: buttonBackground
        anchors.fill: parent
        anchors.margins: 2
        anchors.bottomMargin: 6
        color: "#ffffff"
        radius: 16

        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: {
                console.log("Hamilton Button Clicked")
            }
            hoverEnabled: true
        }
    }
}