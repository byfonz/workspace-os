import Quickshell
import QtQuick

Rectangle {
    id: buttonNetwork

    signal clicked

    width: 40
    height: 32
    radius: 6

    color: "#1e1e2e"

    Row {
        anchors.centerIn: parent
        spacing: 6

        Image {
            source:
                "../../../assets/signal_wifi_bar.svg"

            width: 18
            height: 18

            fillMode: Image.PreserveAspectFit
        }
    }

    MouseArea {
        id: networkMouseArea
        anchors.fill: parent
        onClicked: buttonNetwork.clicked()
    }
}