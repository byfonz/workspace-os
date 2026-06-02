import QtQuick 
import Quickshell

PopupWindow {
    id: panelAudio
    property real marginTop: 12
    property real marginRight: 12

    anchor.window: bar
    anchor.rect.x: parentWindow.width
    anchor.rect.y: parentWindow.height + marginTop
    width: 200
    height: 300
    color: "transparent"

    Rectangle {
        anchors.fill: parent
        color: "#1e1e2e"
        radius: 12

        Text {
            text: "Audio Panel"
            color: "#f8f8f2"
            font.pixelSize: 18
            anchors.centerIn: parent
        }

   
    }
}