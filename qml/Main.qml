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
    property bool isHealingStarted: false

    function setAgeGroupIcon(icon){
        ageGroupLogo.source = icon
    }

    function setAgeGroupImage(image){
        ageGroupImage.source = image
    }

    Image{
        id: ageGroupImage
        source: "qrc:/Hamilton/images/folder-closed.svg"
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 20
        width: 400
        fillMode: Image.PreserveAspectFit
    }

    Column {
        id: mainColumn
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
                    id: favouritePlanetLabel
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
                            setAgeGroupImage("qrc:/Hamilton/images/folder-closed.svg")
                        }
                    }

                    IconHButton {
                        iconSource: isMensPlanet ? "qrc:/Hamilton/images/fill.svg" : "qrc:/Hamilton/images/fire.svg"
                        onClicked: {
                            setAgeGroupIcon(iconSource)
                            setAgeGroupImage("qrc:/Hamilton/images/folder-minus.svg")
                        }
                    }

                    IconHButton {
                        iconSource: isMensPlanet ? "qrc:/Hamilton/images/film.svg" : "qrc:/Hamilton/images/fingerprint.svg"
                        onClicked: {
                            setAgeGroupIcon(iconSource)
                            setAgeGroupImage("qrc:/Hamilton/images/folder-open.svg")
                        }
                    }

                    IconHButton {
                        iconSource: "qrc:/Hamilton/images/filter-circle-dollar.svg"
                        onClicked: {
                            setAgeGroupIcon(iconSource)
                            setAgeGroupImage("qrc:/Hamilton/images/folder.svg")
                        }
                    }
                }
            }
        }
    }

    IconTextHButton{
        id: startHealingButton
        property int baseY: mainColumn.y + mainColumn.height + 20
        x: 20
        y: baseY
        width: 200
        height: 72
        iconSource: "qrc:/Hamilton/images/fill-drip.svg"
        text: "Start healing"

        onClicked: {
            const targetY = mensPlanet.mapToItem(parent, 0, 0).y;
            y = isHealingStarted ? baseY : targetY;

            width = isHealingStarted ? 200 : 120;
            iconSource = isHealingStarted ? "qrc:/Hamilton/images/folder-closed.svg" : "qrc:/Hamilton/images/fill-drip.svg";
            text = isHealingStarted ? "Start healing" : "Stop";
            isHealingStarted = !isHealingStarted
        }

        Behavior on y {
            NumberAnimation { duration: 1000; easing.type: Easing.OutCubic }
        }

        Behavior on width {
            NumberAnimation { duration: 1000; easing.type: Easing.OutCubic }
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