import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    id: window
    width: 1024
    height: 768

    MouseArea {
       id: ma
       anchors.fill: parent
       enabled: false
       cursorShape: Qt.BlankCursor
     }

    title: qsTr("Hidden Lab")

    Item {       
        width: window.width
        height: window.height

        Rectangle {
            width: window.width
            height: window.height
            color: "gray"
        }

        MainMenu {
            anchors.centerIn: parent
        }
    }
}
