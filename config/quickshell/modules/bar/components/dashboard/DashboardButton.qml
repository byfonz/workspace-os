import Quickshell
import QtQuick

Rectangle {
    id: dashboardButton
    signal clicked
    width: 40
    height: 32
    anchors.verticalCenter: parent.verticalCenter
    radius: 6
    color: "#1e1e2e"
    Row {
        anchors.centerIn: parent
        spacing: 6
       Image {
            source: "../../../../assets/icons/arch_logo.svg"
            width: 20   
            height: 20
            fillMode: Image.PreserveAspectFit
        }
    }
    MouseArea {
        id: dashboardMouseArea
        anchors.fill: parent
        onClicked: dashboardButton.clicked()
    }
}