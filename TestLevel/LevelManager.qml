import QtQuick 2.0

Item {
    id: lm

    property int currentRoom: 0
    property string currentRoomTexture: level.rooms[currentRoom].texture

    property var level: {
        "rooms": [
                    {
                        "texture": "textures/room0.png",
                        "doors" : [
                            {
                                "door_texture": "textures/door1.png",
                                "visible": true,
                                "to": 1
                            },
                            {
                                "visible": false,
                                "to": 1
                            },
                            {
                                "visible": false,
                                "to": 2
                            },
                            {
                                "visible": false,
                                "to": 1
                            },
                            {
                                "door_texture": "textures/door2.png",
                                "visible": true,
                                "to": 2
                            },
                        ]
                    },
                    {
                        "texture": "textures/room1.png",
                        "doors" : [
                            {
                                "door_texture": "textures/door1.png",
                                "visible": true,
                                "to": 2
                            },
                            {
                                "visible": false,
                                "to": 1
                            },
                            {
                                "visible": false,
                                "to": 2
                            },
                            {
                                "visible": false,
                                "to": 1
                            },
                            {
                                "door_texture": "textures/door2.png",
                                "visible": true,
                                "to": 0
                            },
                        ]
                    },
                    {
                        "texture": "textures/room2.png",
                        "doors" : [
                            {
                                "door_texture": "textures/door1.png",
                                "visible": true,
                                "to": 0
                            },
                            {
                                "visible": false,
                                "to": 1
                            },
                            {
                                "visible": false,
                                "to": 2
                            },
                            {
                                "visible": false,
                                "to": 1
                            },
                            {
                                "door_texture": "textures/door2.png",
                                "visible": true,
                                "to": 1
                            },
                        ]
                    }
                ],
                "room": 0
    }


    Image {
        id: roomback
        source: parent.currentRoomTexture

        Image {
            x: 300
            y: 300
            id: d0
            source: level.rooms[currentRoom].doors[0].door_texture
            visible: level.rooms[currentRoom].doors[0].visible
        }

        Image {
            id: d1
            source: level.rooms[currentRoom].doors[1].door_texture
            visible: level.rooms[currentRoom].doors[1].visible
        }

        Image {
            id: d2
            source: level.rooms[currentRoom].doors[2].door_texture
            visible: level.rooms[currentRoom].doors[2].visible
        }

        Image {
            id: d3
            source: level.rooms[currentRoom].doors[3].door_texture
            visible: level.rooms[currentRoom].doors[3].visible
        }

        Image {
            x: 100
            id: d4
            source: level.rooms[currentRoom].doors[4].door_texture
            visible: level.rooms[currentRoom].doors[4].visible
        }
    }




    function moveRight() {
        currentRoom = level.rooms[currentRoom].doors[4].to
    }

    function moveLeft() {
        currentRoom = level.rooms[currentRoom].doors[0].to
    }

    Keys.onRightPressed: moveRight()
    Keys.onLeftPressed: moveLeft()

}
