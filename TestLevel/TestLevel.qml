import QtQuick 2.9
import QtQuick.Window 2.3

Window {
    visible: true
    width: 1280
    height: 1024
    title: qsTr("Hello World")

    LevelManager {
        id: lm
        anchors.fill: parent
        focus: true
    }


}
