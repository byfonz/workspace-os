import "./components"
import "./components/dashboard"
import "./components/workspaces"
import "./components/audio"
import QtQuick
import Quickshell

PanelWindow {
            id: bar

            required property var modelData
            property bool dashboardOpen: false
            property bool networkPanelOpen: false
            property bool bluetoothPanelOpen: false
            property bool audioPanelOpen: false

            screen: modelData
            height: 36
            margins.left: 56
            color: "transparent"

            anchors {
                top: true
                left: true
                right: true
            }

            Row {
                anchors.fill: parent
                anchors.margins: 12
                spacing: 12

                Row {
                    anchors.fill: parent
                    spacing: 12

                    DashboardButton {
                        onClicked: dashboardOpen = !dashboardOpen
                    }

                    Workspaces {
                    }

                }

                Clock {
                    anchors.centerIn: parent
                }

                Row {
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 12
                    anchors.rightMargin: 12
                    spacing: 8

                    NetworkButton {
                        onClicked: networkPanelOpen = !networkPanelOpen
                    }

                    BluetoothButton {
                        onClicked: {
                            bluetoothPanelOpen = !bluetoothPanelOpen;
                        }
                    }

                    BatteryBar {
                    }

                    AudioButton {
                        onClicked: {
                            audioPanelOpen = !audioPanelOpen
                        }
                    }
                }

            }

            DashboardPanel {
                visible: dashboardOpen
            }

            NetworkPopup {
                visible: networkPanelOpen
            }

            BluetoothPopup {
                visible: bluetoothPanelOpen
            }

            AudioPopup {
                visible: audioPanelOpen
            }

        }
