import QtQuick
import QtQuick.Controls

HButton{
    id: root
    width: 150
    height: 104

    property alias iconSource: buttonIcon.source
    property alias text: buttonText.text

    Image{
        id: buttonIcon
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: 20
        height: parent.height * 0.3
        fillMode: Image.PreserveAspectFit
        source: "qrc:/Hamilton/images/filter.svg"
    }

    Text{
        id: buttonText
        anchors.left: parent.left
        anchors.right: buttonIcon.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: 10
        text: "Button"
        color: "#696969"
        font.pixelSize: 24
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }    
}
