import QtQuick
import QtQuick.Controls
import QtQuick.Window
import "components"

Window {
    visible: true
    width: 1024
    height: 768
    title: "Hamilton"
    color: theme.pageColor

    Theme {
        id: theme
    }

    Column {
        spacing: 20
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 20

        Row{
            spacing: 10

            IconHButton {
                iconSource: "qrc:/Hamilton/images/file-video.svg"
            }

            IconHButton {
                iconSource: "qrc:/Hamilton/images/file-waveform.svg"
                onClicked: {
                    theme.toggleTheme()
                }
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
                        iconSource: "qrc:/Hamilton/images/file-word.svg"
                    }

                    IconHButton {
                        iconSource: "qrc:/Hamilton/images/file-zipper.svg"
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
                        iconSource: "qrc:/Hamilton/images/fill-drip.svg"
                    }

                    IconHButton {
                        iconSource: "qrc:/Hamilton/images/fill.svg"
                    }

                    IconHButton {
                        iconSource: "qrc:/Hamilton/images/film.svg"
                    }

                    IconHButton {
                        iconSource: "qrc:/Hamilton/images/filter-circle-dollar.svg"
                    }
                }
            }
        }
    }
}