import QtQuick
import QtQuick.Controls

Item{
    id: root
    width: 100
    height: 104

    property alias iconSource: buttonIcon.source

    Rectangle {
        id: borderShifted
        width: parent.width
        height: parent.height
        color: "darkgrey"
        radius: 18
    }

    Rectangle {
        id: buttonBackground
        anchors.fill: parent
        anchors.margins: 2
        anchors.bottomMargin: 6
        color: "#ffffff"
        radius: 16

        Image{
            id: buttonIcon
            anchors.centerIn: parent
            width: parent.width * 0.6
            height: parent.height * 0.6
            source: "qrc:/Hamilton/images/filter.svg"
        }

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