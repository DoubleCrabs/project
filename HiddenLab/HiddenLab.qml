import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    id: window
    visible: true
    width: 800
    height: 600
    title: qsTr("Hidden Lab")


    Item {
        width: window.width
        height: window.height

        Rectangle {
            width: window.width
            height: window.height
            color: "grey"
        }

        MainMenu {
            anchors.centerIn: parent

        }






    }

}
