import QtQuick
import Quickshell

PanelWindow {
            required property var modelData

            screen: modelData
            width: 56
            color: "#000000"

            anchors {
                top: true
                left: true
            }

            Item {
                anchors.fill: parent

                Row {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 12

                    Image {
                        source: "../../../assets/archlinux.svg"
                        width: 24
                        height: 24
                        fillMode: Image.PreserveAspectFit
                    }

                }

            }

        }
