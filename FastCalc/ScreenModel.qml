import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4
import Operation 1.0

Rectangle{

    property int dim1: 5
    property int dim2: 5
    property int dim3: 5
    property string entrada1: "0"
    property string entrada2: "0"
    property bool sumScreen: false
    property bool subScreen: false
    property bool multiScreen: false
    property bool divScreen: false
    property string type: "soma"

    id: screenModel
    anchors.fill: parent
    visible: false
    color: "#90A4AE"

    Integration{

        id: cpp
    }
    
    function empty(){
        
        if(num1.text != "" && num2.text != "" && num1.validator && num2.validator){
            
            //cpp.set()
            num1.text = ""
            num2.text = ""
        }
        else{
            
            messageDialog.visible = true
        }
    }
    function set(){

        entrada1 = num1.text
        entrada2 = num2.text
    }

    function decision(){

        if(sumScreen){

            cpp.sum()
        }
        else if(subScreen){

            cpp.subtraction()
        }
        else if(multiScreen){

            cpp.multiplication()
        }
        else if(divScreen){

            cpp.division()
        }
    }

    MessageDialog {

        id: messageDialog
        icon: StandardIcon.Warning
        title: "Empty Entrance"
        text: "SOMETHING IS WRONG!!

Try again"
    }

    ColumnLayout{

        anchors.centerIn: screenModel
        spacing: 20

        Result {

            id: resulter
        }

        TextField {

            id: num1
            placeholderText: qsTr("First Number")
            font.pixelSize: 20
            font.family: "Arial Black"
            Layout.alignment: Qt.AlignHCenter
            inputMethodHints: Qt.ImhFormattedNumbersOnly
            validator: IntValidator{}
            style: TextFieldStyle {
                textColor: "black"
                background: Rectangle {
                    color: "#FAFAFA"
                    radius: 30
                    implicitWidth: dim1
                    implicitHeight: dim2
                    border.color: "#000000"
                    border.width: 3
                }
            }
        }

        TextField {

            id: num2
            placeholderText: qsTr("Second Number")
            font.pixelSize: 20
            font.family: "Arial Black"
            Layout.alignment: Qt.AlignHCenter
            inputMethodHints: Qt.ImhFormattedNumbersOnly
            validator: IntValidator{}
            style: TextFieldStyle {
                textColor: "black"
                background: Rectangle {
                    color: "#FAFAFA"
                    radius: 30
                    implicitWidth: dim1
                    implicitHeight: dim2
                    border.color: "#000000"
                    border.width: 3
                }
            }
        }



        Icon {

            id: goSum
            altura: dim3
            largura: altura
            raio: altura
            Layout.alignment: Qt.AlignHCenter

            Oper {

                id: sumTex
                typeOp: type
                anchors.centerIn: goSum
            }

            MouseArea{

                id: goSumButton
                anchors.fill: goSum
                onClicked: {

                    set()
                    empty()
                    cpp.setNumber1(entrada1)
                    cpp.setNumber2(entrada2)
                    decision()
                    resulter.resultInt = cpp.result
                }

            }

            color: goSumButton.pressed ? pressColor : onColor

        }


    }



}
