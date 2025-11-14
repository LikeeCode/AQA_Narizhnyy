import QtQuick

Item{
    property bool isDarkTheme: false

    readonly property color pageColor: isDarkTheme ? "#333333" : "#ffffff"
    readonly property color textColor: isDarkTheme ? "#ffffff" : "#696969"
    readonly property color accentColor: isDarkTheme ? "#ffd700" : "#daa520"

    function toggleTheme() {
        isDarkTheme = !isDarkTheme
    }
}