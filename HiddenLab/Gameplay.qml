import QtQuick 2.0
import QtQuick.Layouts 1.0

Item {
    id: gameplay
    visible: false
    signal gameStopped

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 5
        MainMenuButton {
            id: returnToMainMenu
            text: "Вернуться \n в главное меню"
            Keys.onReturnPressed: gameStopped()
            onVisibleChanged: {
                if (visible) focus = true
            }
        }
    }
}
