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

    property bool isMensPlanet: true

    function setAgeGroupIcon(icon){
        ageGroupLogo.source = icon
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

                HLabel{
                    text: "Favourite planet:"
                    color: theme.textColor
                }
                
                Row{
                    spacing: 10

                    IconHButton {
                        id: mensPlanet
                        iconSource: "qrc:/Hamilton/images/file-word.svg"
                        onClicked: {
                            isMensPlanet = true
                        }
                    }

                    IconHButton {
                        id: womensPlanet
                        iconSource: "qrc:/Hamilton/images/file-zipper.svg"
                        onClicked: {
                            isMensPlanet = false
                        }
                    }
                }
            }
        }

        Row{
            spacing: 10

            Column{
                spacing: 4

                HLabel{
                    text: "Age group:"
                    color: theme.textColor
                }
                
                Row{
                    spacing: 10

                    IconHButton {
                        iconSource: "qrc:/Hamilton/images/fill-drip.svg"
                        onClicked: {
                            setAgeGroupIcon(iconSource)
                        }
                    }

                    IconHButton {
                        iconSource: isMensPlanet ? "qrc:/Hamilton/images/fill.svg" : "qrc:/Hamilton/images/fire.svg"
                        onClicked: {
                            setAgeGroupIcon(iconSource)
                        }
                    }

                    IconHButton {
                        iconSource: isMensPlanet ? "qrc:/Hamilton/images/film.svg" : "qrc:/Hamilton/images/fingerprint.svg"
                        onClicked: {
                            setAgeGroupIcon(iconSource)
                        }
                    }

                    IconHButton {
                        iconSource: "qrc:/Hamilton/images/filter-circle-dollar.svg"
                        onClicked: {
                            setAgeGroupIcon(iconSource)
                        }
                    }
                }
            }
        }
    }

    Image{
        id: ageGroupLogo
        source: "qrc:/Hamilton/images/fill-drip.svg"
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 20
        width: 200
        fillMode: Image.PreserveAspectFit
    }
}