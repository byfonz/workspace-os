import QtQuick
import Quickshell
import qs.services as Services

Rectangle {
    id: audioButton
    signal clicked
    width: 40
    height: 40
    color: "#1e1e2e"

    Text {
        id: label
        anchors.centerIn: parent
        text: "" + Math.round(Services.Volume.volume*100) + "%"
        color: "white"
    }

         MouseArea {
            anchors.fill: parent
            onClicked: audioButton.clicked()
        }
}