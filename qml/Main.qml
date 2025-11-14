import QtQuick
import QtQuick.Controls
import QtQuick.Window

Window {
    visible: true
    width: 400
    height: 300
    title: qsTr("Hamilton")

    Button {
        text: "Click Me"
        anchors.centerIn: parent
        onClicked: {
            console.log("Button was clicked!")
        }
    }
}