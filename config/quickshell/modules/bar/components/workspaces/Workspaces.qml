import QtQuick
import Quickshell

Row {
    id: workspaces
    anchors.verticalCenter: parent.verticalCenter
    spacing: 6

    Repeater {
        model: 5

        Rectangle {
            width: 32
            height: 32
            radius: 6
            color: "#1e1e2e"
        }

    }
}
