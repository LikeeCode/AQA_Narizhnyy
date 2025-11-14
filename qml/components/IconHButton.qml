import QtQuick
import QtQuick.Controls

HButton{
    id: root

    property alias iconSource: buttonIcon.source

    Image{
        id: buttonIcon
        anchors.centerIn: parent
        width: parent.width * 0.6
        height: parent.height * 0.6
        source: "qrc:/Hamilton/images/filter.svg"
    }
}
