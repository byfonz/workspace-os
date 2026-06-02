import QtQuick

Text {
    id: clock
    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            clock.text = Qt.formatDateTime(new Date(), "hh:mm:ss").trim()
        }
    }

    Component.onCompleted: {
        clock.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
    }
}