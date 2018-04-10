import QtQuick 2.0

Item {
    id: gameplay
//    focus: false
    visible: false
    signal gameStopped



    Rectangle {
//        console.log(parent.focus ? "Поминялася" : "Нет")

        width: 100
        height: 100
        color: "red"
    }

    MainMenuButton {
        focus: true
        id: returnToMainMenu
        text: "Вернуться в главное меню"
        Keys.onReturnPressed: gameStopped()



        onVisibleChanged: {
            if (visible) focus = true
             console.log(focus)
        }

        Component.onCompleted: console.log(focus)
    }

}
