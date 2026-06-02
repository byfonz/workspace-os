import "../../../colors" as ColorsModule
import QtQuick
import qs.services as Services

Rectangle {
    property string batteryIcon: {
        const p = Services.Battery.percentage;
        if (Services.Battery.charging)
            return Icons.batteryCharging;

        if (p >= 95)
            return Icons.battery100;

        if (p >= 85)
            return Icons.battery90;

        if (p >= 75)
            return Icons.battery80;

        if (p >= 65)
            return Icons.battery70;

        if (p >= 55)
            return Icons.battery60;

        if (p >= 45)
            return Icons.battery50;

        if (p >= 35)
            return Icons.battery40;

        if (p >= 25)
            return Icons.battery30;

        if (p >= 15)
            return Icons.battery20;

        if (p >= 5)
            return Icons.battery10;

        return Icons.battery0;
    }

    radius: 8
    implicitHeight: 28
    implicitWidth: battery.implicitWidth + 16
    color: "#282A36"

    Row {
        spacing: 4
        anchors.centerIn: parent

        Image {
            source: "../../../assets/icons/battery_shell.svg"
            width: 16
            height: 16
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: battery

            anchors.centerIn: parent
            font.pixelSize: 12
            color: "#ffffff"
            text: Services.Battery.percentage + "%"
        }

    }

}
