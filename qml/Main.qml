import QtQuick
import QtQuick.Controls
import QtQuick.Window
import "components"

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Hamilton")
    color: "#ffffff"

    IconHButton {
        id: hamiltonButton
        anchors.centerIn: parent
    }
}