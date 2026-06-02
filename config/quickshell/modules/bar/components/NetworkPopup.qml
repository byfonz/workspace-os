import QtQuick
import Quickshell

PopupWindow {
    id: panelNetwork

    property real marginTop: 12
    property real marginRight: 12

    width: 500
    height: 500
    anchor.window: bar
    anchor.rect.x: parentWindow.width - width - marginRight
    anchor.rect.y: parentWindow.height + marginTop
    color: "transparent"

    Rectangle {
        anchors.fill: parent
        color: "#282A36"
        radius: 12

        Column {
            anchors.fill: parent
            anchors.margins: 12
            spacing: 12

            // ── Header ─────────────────────────────────────────────────────────
            Text {
                text: "Network Settings"
                color: "#f8f8f2"
                font.pixelSize: 18
            }
        
            Repeater {
                model: 5

                Rectangle {
                    width: 100
                    height: 40
                    border.width: 1
                    color: "yellow"
                }

            }

        }

    }

}
