import QtQuick
import Quickshell

PopupWindow {
    id: panelDashboard

    property real marginTop: 12
    property real marginRight: 12


    anchor.window: bar
    anchor.rect.x: parentWindow.width
    anchor.rect.y: parentWindow.height + marginTop
    width: 400
    height: 800
    color: "#1e1e2e"

    Rectangle {
        anchors.fill: parent
        color: "#282A36"
        radius: 12

        Text {
            text: "Dashboard"
            color: "#f8f8f2"
            font.pixelSize: 18
            anchors.centerIn: parent
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 50
            spacing: 12

            Text{
                text: "Widget 1"
                color: "#f8f8f2"
            }

            Text{
                text: "Widget 2"
                color: "#f8f8f2"
            }
        }

    }

}
