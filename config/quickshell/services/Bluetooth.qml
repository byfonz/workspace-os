pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Bluetooth

Singleton {
    id: root
    readonly property BluetoothAdapter defaultAdapter: Bluetooth.defaultAdapter
    readonly property BluetoothDevice activeDevice: devices.find(d => d.connected) ?? null

    function icon() {
        return defaultAdapter.discovering ? "bluetooth_searching" : "bluetooth"
    }
}