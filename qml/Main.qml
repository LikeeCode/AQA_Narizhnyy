import QtQuick
import QtQuick.Controls
import QtQuick.Window
import "components"

Window {
    visible: true
    width: 1024
    height: 768
    title: "Hamilton"
    color: "#ffffff"

    Column {
        spacing: 20
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 20

        Row{
            spacing: 10

            IconHButton {
                iconSource: "qrc:/Hamilton/images/filter.svg"
            }

            IconHButton {
                iconSource: "qrc:/Hamilton/images/filter.svg"
            }
        }

        Row{
            spacing: 10

            Column{
                spacing: 4

                Text{
                    font.pixelSize: 12
                    text: "Favourite planet:"
                    color: "#696969"
                }
                
                Row{
                    spacing: 10

                    IconHButton {
                        iconSource: "qrc:/Hamilton/images/filter.svg"
                    }

                    IconHButton {
                        iconSource: "qrc:/Hamilton/images/filter.svg"
                    }
                }
            }
        }

        Row{
            spacing: 10

            Column{
                spacing: 4

                Text{
                    font.pixelSize: 12
                    text: "Age group:"
                    color: "#696969"
                }
                
                Row{
                    spacing: 10

                    IconHButton {
                        iconSource: "qrc:/Hamilton/images/filter.svg"
                    }

                    IconHButton {
                        iconSource: "qrc:/Hamilton/images/filter.svg"
                    }

                    IconHButton {
                        iconSource: "qrc:/Hamilton/images/filter.svg"
                    }

                    IconHButton {
                        iconSource: "qrc:/Hamilton/images/filter.svg"
                    }
                }
            }
        }
    }
}