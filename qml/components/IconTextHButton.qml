import QtQuick
import QtQuick.Controls

HButton{
    id: root
    width: 150
    height: 104

    property alias iconSourceAbove: buttonIconAbove.source
    property alias iconSourceBelow: buttonIconBelow.source
    property alias textAbove: buttonTextAbove.text
    property alias textBelow: buttonTextBelow.text
    property bool showTextAbove: true

    Image{
        id: buttonIconAbove
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: 20
        height: parent.height * 0.3
        fillMode: Image.PreserveAspectFit
        source: "qrc:/Hamilton/images/filter.svg"
        opacity: root.showTextAbove ? 1.0 : 0.0

        Behavior on opacity {
            NumberAnimation { duration: 250; easing.type: Easing.OutCubic }
        }
    }

    Image{
        id: buttonIconBelow
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: 20
        height: parent.height * 0.3
        fillMode: Image.PreserveAspectFit
        source: "qrc:/Hamilton/images/folder.svg"

        opacity: root.showTextAbove ? 0.0 : 1.0

        Behavior on opacity {
            NumberAnimation { duration: 250; easing.type: Easing.OutCubic }
        }
    }

    Text{
        id: buttonTextAbove
        anchors.left: parent.left
        anchors.right: buttonIcon.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: 10
        text: "Button"
        color: "#696969"
        font.pixelSize: 24
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        opacity: root.showTextAbove ? 1.0 : 0.0

        Behavior on opacity {
            NumberAnimation { duration: 250; easing.type: Easing.OutCubic }
        }
    }

    Text{
        id: buttonTextBelow
        anchors.left: parent.left
        anchors.right: buttonIcon.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: 10
        text: ""
        color: "#696969"
        font.pixelSize: 24
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        opacity: root.showTextAbove ? 0.0 : 1.0

        Behavior on opacity {
            NumberAnimation { duration: 250; easing.type: Easing.OutCubic }
        }
    }
}
