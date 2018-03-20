import QtQuick 2.0
import QtQuick.Layouts 1.0

Item {
    id: menu

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 5

        MainMenuButton {
            text: "Новая игра"

        }

        MainMenuButton {
            text: "Загрузить игру"
        }

        MainMenuButton {
            text: "Настройки"
        }

        MainMenuButton {
            text: "Выход"
        }
    }

}
