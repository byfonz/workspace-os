import QtQuick

Rectangle {
    id: bluetoothButton
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
                "../../../assets/battery_android_bolt.svg"

            width: 18
            height: 18

            fillMode: Image.PreserveAspectFit
        }
    }

    MouseArea {
        id: bluetoothMouseArea
        anchors.fill: parent
        onClicked: bluetoothButton.clicked()
    }
}