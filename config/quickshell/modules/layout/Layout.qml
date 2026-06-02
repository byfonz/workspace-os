import QtQuick
import Quickshell

import "./components/sidebar"
import "./components/bar"


PanelWindow {
    id: layout
    anchors{
        top: true
        left: true
        right: true
    }

    Row{
        anchors.fill: parent

        SideBar{}
        Bar{}

    }
}