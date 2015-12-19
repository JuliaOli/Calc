import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4

Text {

    property string typeOp: "Soma"
    id: sumTex
    text: qsTr(typeOp)
    font.pixelSize: 60
    font.family: "Arial Black"
}
