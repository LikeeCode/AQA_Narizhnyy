import QtQuick
import QtQuick.Controls

Item{
    id: root
    width: 72
    height: 72

    signal clicked()

    Rectangle {
        id: borderShifted
        width: parent.width
        height: parent.height
        color: theme.textColor
        radius: 18
    }

    Rectangle {
        id: buttonBackground
        anchors.fill: parent
        anchors.margins: 2
        anchors.bottomMargin: 6
        color: theme.pageColor
        radius: 16

        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: {
                root.clicked()
            }
            hoverEnabled: true
        }
    }
}