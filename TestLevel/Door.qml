import QtQuick 2.0

Item {
    property string texture
    Image {
        source: parent.texture
    }
}
