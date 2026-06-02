import QtQuick
import Quickshell

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData

            screen: modelData
            height: 40

            anchors {
                bottom: true
                left: true
                right: true
            }

            Rectangle {
                anchors.fill: parent
                color: "transparent"
            }

        }

    }
}