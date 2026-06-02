import QtQuick
import Quickshell
import Quickshell.Hyprland

PopupWindow {
    id: popupBluetooth
    anchor.window: bar
    anchor.rect.x: parentWindow.width
    anchor.rect.y: parentWindow.height
    width: 500
    height: 800
    color: "#1e1e2e"
    Rectangle {
        anchors.fill: parent
        color: "#282A36"
        radius: 12
    }
}
