import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4
import Operation 1.0

Window {
    visible: true
    width: 400
    height: 500

    function mm(value){
        return value*Screen.pixelDensity
    }

    Rectangle{

        id: screen1
        visible: true
        anchors.fill: parent
        color: "#90A4AE"

        ColumnLayout{

            id: column
            anchors.centerIn: screen1
            spacing: 20

            Text {
                id: calc
                text: qsTr("FastCalc")
                font.family: "Arial Black"
                color: "#FFFFFF"
                style: Text.Outline
                font.pixelSize:40
                Layout.alignment: Qt.AlignHCenter

            }

            RowLayout{

                id: row1
                spacing: 20

                Icon {

                    id: sum
                    altura: mm(17)
                    largura: altura
                    raio: altura

                    Oper{

                        id: sumType
                        typeOp: "+"
                        anchors.centerIn: sum
                    }

                    MouseArea{
                        id: sumButton
                        anchors.fill: sum
                        onClicked: {

                            screen2.visible = true
                            screen1.visible = false
                        }
                    }

                    color: sumButton.pressed ? pressColor : onColor

                }
                Icon {

                    id: sub
                    altura: mm(17)
                    largura: altura
                    raio: altura

                    Oper{

                        id: subType
                        typeOp: "-"
                        anchors.centerIn: sub
                    }

                    MouseArea{
                        id: subButton
                        anchors.fill: sub
                        onClicked: {

                            screen3.visible = true
                            screen1.visible = false
                        }

                    }

                    color: subButton.pressed ? pressColor : onColor

                }
            }
            RowLayout{

                id: row2
                spacing: 20

                Icon {
                    id: multi
                    altura: mm(17)
                    largura: altura
                    raio: altura

                    Oper{

                        id: multiType
                        typeOp: "*"
                        anchors.centerIn: multi
                    }
                    MouseArea{
                        id: multiButton
                        anchors.fill: multi
                        onClicked: {

                            screen4.visible = true
                            screen1.visible = false
                        }

                    }

                    color: multiButton.pressed ? pressColor : onColor

                }

                Icon {
                    id: division
                    altura: mm(17)
                    largura: altura
                    raio: altura

                    Oper{

                        id: divType
                        typeOp: "/"
                        anchors.centerIn: division
                    }

                    MouseArea{
                        id: divButton
                        anchors.fill: division
                        onClicked: {

                            screen5.visible = true
                            screen1.visible = false
                        }

                    }

                    color: divButton.pressed ? pressColor : onColor

                }
            }
        }

    }

    ScreenModel {

        id: screen2
        dim1: mm(50)
        dim2: mm(10)
        dim3: mm(17)
        type: "+"
        sumScreen: true

        Retorno {

            id: retorno1
            altura: mm(15)
            largura: mm(10)
            anchors.top: screen2.top

            MouseArea{

                anchors.fill: retorno1
                onClicked: {

                    screen2.sumScreen = false
                    screen1.visible = true
                    screen2.visible = false

                }

            }
        }
    }

    ScreenModel {

        id: screen3
        dim1: mm(50)
        dim2: mm(10)
        dim3: mm(17)
        type: "-"
        subScreen: true

        Retorno {

            id: retorno2
            altura: mm(15)
            largura: mm(10)
            anchors.top: screen3.top

            MouseArea{

                anchors.fill: retorno2
                onClicked: {

                    screen3.subScreen = false
                    screen1.visible = true
                    screen3.visible = false

                }

            }
        }
    }

    ScreenModel {

        id: screen4
        dim1: mm(50)
        dim2: mm(10)
        dim3: mm(17)
        type: "*"
        multiScreen: true

        Retorno {

            id: retorno3
            altura: mm(15)
            largura: mm(10)
            anchors.top: screen4.top

            MouseArea{

                anchors.fill: retorno3
                onClicked: {

                    screen4.multiScreen = false
                    screen1.visible = true
                    screen4.visible = false
                }

            }
        }
    }

    ScreenModel {

        id: screen5
        dim1: mm(50)
        dim2: mm(10)
        dim3: mm(17)
        type: "/"
        divScreen: true

        Retorno {

            id: retorno4
            altura: mm(15)
            largura: mm(10)
            anchors.top: screen5.top

            MouseArea{

                anchors.fill: retorno4
                onClicked: {

                    screen5.divScreen = false
                    screen1.visible = true
                    screen5.visible = false
                }

            }
        }
    }

}



