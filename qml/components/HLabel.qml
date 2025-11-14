import QtQuick
import QtQuick.Controls

Item{
    id: root
    width: 100
    height: 16

    property alias text: label.text
    property alias font: label.font
    property alias color: label.color

    Text{
        id: label
        anchors.fill: parent
        text: "Text"
        font.pixelSize: 12
    }
}